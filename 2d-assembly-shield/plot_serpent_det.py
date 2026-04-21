"""
plot_serpent_det.py
--------------------
Reads a Serpent 2 input file and its _det0.m output, then plots
flux (or reaction rate) vs. spatial position for every detector found.

Usage:
    python plot_serpent_det.py <input_file> <det0_file>

Example:
    python plot_serpent_det.py 2d.inp 2d_inp_det0.m
"""

import sys
import re
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm
from pathlib import Path


# ---------------------------------------------------------------------------
# 1. Parse energy grid → NG
# ---------------------------------------------------------------------------
def parse_energy_grid(inp_text):
    """
    Find the first 'ene' card with type=1 and return NG = (number of bounds - 1).
    If not found, return NG = 1.
    """
    for line in inp_text.splitlines():
        # Strip comments
        line = line.split('%')[0].strip()
        tokens = line.split()
        if not tokens:
            continue
        if tokens[0].lower() == 'ene' and len(tokens) >= 3:
            if tokens[2] == '1':
                G = len(tokens) - 3   # everything after type token
                NG = max(G - 1, 1)
                grid_name = tokens[1]
                print(f"[INFO] Energy grid '{grid_name}' found: G={G} bounds → NG={NG} groups")
                return NG
    print("[INFO] No 'ene' card with type=1 found → NG=1")
    return 1


# ---------------------------------------------------------------------------
# 2. Parse detector names from input
# ---------------------------------------------------------------------------
def parse_detector_names(inp_text):
    """
    Return a list of detector names in the order they appear.
    A detector name is the token immediately after the keyword 'det'.
    """
    names = []
    for line in inp_text.splitlines():
        line = line.split('%')[0].strip()  # strip inline AND full-line comments
        tokens = line.split()
        if not tokens:
            continue
        if tokens[0].lower() == 'det' and len(tokens) >= 2:
            name = tokens[1]
            if name not in names:
                names.append(name)
    print(f"[INFO] Detectors found in input: {names}")
    return names


# ---------------------------------------------------------------------------
# 3. Parse det0.m
# ---------------------------------------------------------------------------
def parse_matlab_array(det0_text, varname):
    """
    Extract a MATLAB-style array:
        VARNAME = [
            ...
        ];
    Returns a 2-D numpy array (rows × cols), or None if not found.
    """
    # Regex: match 'VARNAME = [' … '];'  (multiline, non-greedy)
    pattern = re.compile(
        r'\b' + re.escape(varname) + r'\s*=\s*\[(.*?)\];',
        re.DOTALL
    )
    m = pattern.search(det0_text)
    if not m:
        return None
    body = m.group(1)
    numbers = re.findall(r'[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?', body)
    if not numbers:
        return None
    values = np.array([float(v) for v in numbers])
    # Determine number of columns from first data row
    # Find rows by splitting on newlines and keeping non-empty ones
    rows = [r.strip() for r in body.strip().splitlines() if r.strip()]
    if not rows:
        return None
    ncols = len(re.findall(r'[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?', rows[0]))
    if ncols == 0:
        return None
    nrows = len(values) // ncols
    return values[:nrows * ncols].reshape(nrows, ncols)


def get_detector_data(det0_text, det_name, NG):
    """
    Extract (x_mid, y_values, uncertainties) for a detector.

    DET<name>  : main result array
        col[-3] = spatial bin index  (i)
        col[-2] = tally value        (y)
        col[-1] = relative std dev   (sigma)

    DET<name>X : x-mesh array
        col[1]  = upper bound  (col[0]=lower, col[2]=midpoint)
        We use col[2] (midpoint) as x.

    If NG > 1 we sum tally values over energy groups for each spatial bin
    (simple integral flux across all groups).
    """
    main = parse_matlab_array(det0_text, f'DET{det_name}')
    xmesh = parse_matlab_array(det0_text, f'DET{det_name}X')

    if main is None:
        print(f"[WARN] DET{det_name} not found in det0 file — skipping.")
        return None, None, None
    if xmesh is None:
        print(f"[WARN] DET{det_name}X not found in det0 file — skipping.")
        return None, None, None

    # x midpoints (3rd column of the X mesh array)
    x_mid = xmesh[:, 2]
    NX = len(x_mid)

    # The main array has NX * NG rows when there is energy binning.
    # Spatial bin index is in col[-3] (1-based).
    # We group rows by spatial bin and sum tally values.
    i_col   = main[:, -3].astype(int)   # spatial bin index (1-based)
    y_col   = main[:, -2]               # tally value
    sig_col = main[:, -1]               # relative uncertainty

    # Sum over energy groups per spatial bin
    y_out   = np.zeros(NX)
    sig_out = np.zeros(NX)

    for ix in range(1, NX + 1):
        mask = (i_col == ix)
        if not np.any(mask):
            continue
        y_vals   = y_col[mask]
        sig_vals = sig_col[mask]
        y_sum    = np.sum(y_vals)
        y_out[ix - 1] = y_sum
        # Combined relative uncertainty (quadrature, weighted by value)
        if y_sum > 0:
            sig_out[ix - 1] = np.sqrt(np.sum((y_vals * sig_vals) ** 2)) / y_sum
        else:
            sig_out[ix - 1] = 0.0

    return x_mid, y_out, sig_out


# ---------------------------------------------------------------------------
# 4. Plot
# ---------------------------------------------------------------------------
def plot_detectors(detectors, out_path="detector_fluxes.png"):
    """
    detectors: list of dicts with keys 'name', 'x', 'y', 'sigma'
    """
    valid = [d for d in detectors if d['x'] is not None]
    if not valid:
        print("[ERROR] No valid detector data to plot.")
        return

    n = len(valid)
    colors = cm.tab10(np.linspace(0, 1, max(n, 1)))

    fig, ax = plt.subplots(figsize=(12, 6))

    for d, color in zip(valid, colors):
        x   = d['x']
        y   = d['y']
        sig = d['sigma']
        yerr = y * sig   # absolute uncertainty

        ax.plot(x, y, label=d['name'], color=color, lw=1.5)
        ax.fill_between(x, y - yerr, y + yerr, color=color, alpha=0.15)

    ax.set_xlabel("x position (cm)", fontsize=13)
    ax.set_ylabel("Flux / Reaction rate  [arb. units]", fontsize=13)
    ax.set_title("Serpent detector tallies vs. x-position", fontsize=14)
    ax.legend(fontsize=9, ncol=2)
    ax.grid(True, linestyle='--', alpha=0.5)
    ax.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    plt.tight_layout()
    plt.savefig(out_path, dpi=150)
    print(f"[INFO] Plot saved → {out_path}")
    plt.close()


# ---------------------------------------------------------------------------
# 5. Main
# ---------------------------------------------------------------------------
def main():
    if len(sys.argv) < 3:
        print("Usage: python plot_serpent_det.py <input_file> <det0_file>")
        sys.exit(1)

    inp_path  = Path(sys.argv[1])
    det0_path = Path(sys.argv[2])

    if not inp_path.exists():
        print(f"[ERROR] Input file not found: {inp_path}")
        sys.exit(1)
    if not det0_path.exists():
        print(f"[ERROR] det0 file not found: {det0_path}")
        sys.exit(1)

    inp_text  = inp_path.read_text()
    det0_text = det0_path.read_text()

    # --- Step 1: energy groups
    NG = parse_energy_grid(inp_text)

    # --- Step 2: detector names
    det_names = parse_detector_names(inp_text)
    if not det_names:
        print("[ERROR] No detectors found in the input file.")
        sys.exit(1)

    # --- Step 3: extract data from det0
    detectors = []
    for name in det_names:
        x, y, sigma = get_detector_data(det0_text, name, NG)
        detectors.append({'name': name, 'x': x, 'y': y, 'sigma': sigma})
        if x is not None:
            print(f"  → {name}: {len(x)} x-bins, "
                  f"peak={np.max(y):.4e} ± {np.max(y)*np.mean(sigma[y>0]):.2e}")

    # --- Step 4: plot
    out_name = inp_path.stem + "_detectors.png"
    plot_detectors(detectors, out_path=out_name)


if __name__ == "__main__":
    main()
