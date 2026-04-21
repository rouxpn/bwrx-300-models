#!/usr/bin/env python3
"""
plot_serpent_det_all_cases.py
-----------------------------
Scan a folder of Serpent input/output files and generate two families of plots:

1. One plot per detector, overlaying all cases on the same figure.
2. One plot per case, overlaying all detectors for that case on the same figure.

Expected file naming inside the target folder (default: chemComp/):
    concComp1.inp
    concComp1_det0.m
    concComp2.inp
    concComp2_det0.m
    ...

Usage:
    python plot_serpent_det_all_cases.py
    python plot_serpent_det_all_cases.py chemComp

Output:
    <folder>/plots/by_detector/<detector_name>_all_cases.png
    <folder>/plots/by_case/<case_name>_all_detectors.png
"""

import sys
import re
from pathlib import Path
from collections import defaultdict

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm


# ---------------------------------------------------------------------------
# 1. Parse energy grid -> NG
# ---------------------------------------------------------------------------
def parse_energy_grid(inp_text):
    """
    Find the first 'ene' card with type=1 and return NG = (number of bounds - 1).
    If not found, return NG = 1.
    """
    for line in inp_text.splitlines():
        line = line.split('%')[0].strip()
        tokens = line.split()
        if not tokens:
            continue
        if tokens[0].lower() == 'ene' and len(tokens) >= 3 and tokens[2] == '1':
            g = len(tokens) - 3
            ng = max(g - 1, 1)
            grid_name = tokens[1]
            print(f"[INFO] Energy grid '{grid_name}' found: G={g} bounds -> NG={ng} groups")
            return ng
    print("[INFO] No 'ene' card with type=1 found -> NG=1")
    return 1


# ---------------------------------------------------------------------------
# 2. Parse detector names from input
# ---------------------------------------------------------------------------
def parse_detector_names(inp_text):
    """Return detector names in the order they appear in the input file."""
    names = []
    for line in inp_text.splitlines():
        line = line.split('%')[0].strip()
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
# 3. Parse MATLAB arrays in det0.m
# ---------------------------------------------------------------------------
def parse_matlab_array(det0_text, varname):
    """
    Extract a MATLAB-style array:
        VARNAME = [
            ...
        ];
    Returns a 2-D numpy array or None.
    """
    pattern = re.compile(r'\b' + re.escape(varname) + r'\s*=\s*\[(.*?)\];', re.DOTALL)
    match = pattern.search(det0_text)
    if not match:
        return None

    body = match.group(1)
    numbers = re.findall(r'[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?', body)
    if not numbers:
        return None

    values = np.array([float(v) for v in numbers])
    rows = [r.strip() for r in body.strip().splitlines() if r.strip()]
    if not rows:
        return None

    ncols = len(re.findall(r'[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?', rows[0]))
    if ncols == 0:
        return None

    nrows = len(values) // ncols
    return values[:nrows * ncols].reshape(nrows, ncols)


# ---------------------------------------------------------------------------
# 4. Extract detector data
# ---------------------------------------------------------------------------
def get_detector_data(det0_text, det_name, ng):
    """
    Extract (x_mid, y_values, uncertainties) for one detector.

    DET<name>  : main result array
        col[-3] = spatial bin index
        col[-2] = tally value
        col[-1] = relative std dev

    DET<name>X : x-mesh array
        col[2] = midpoint

    If NG > 1, sum over energy groups for each spatial bin.
    """
    main = parse_matlab_array(det0_text, f'DET{det_name}')
    xmesh = parse_matlab_array(det0_text, f'DET{det_name}X')

    if main is None:
        print(f"[WARN] DET{det_name} not found in det0 file - skipping.")
        return None, None, None
    if xmesh is None:
        print(f"[WARN] DET{det_name}X not found in det0 file - skipping.")
        return None, None, None

    x_mid = xmesh[:, 2]
    nx = len(x_mid)

    i_col = main[:, -3].astype(int)
    y_col = main[:, -2]
    sig_col = main[:, -1]

    y_out = np.zeros(nx)
    sig_out = np.zeros(nx)

    for ix in range(1, nx + 1):
        mask = (i_col == ix)
        if not np.any(mask):
            continue

        y_vals = y_col[mask]
        sig_vals = sig_col[mask]
        y_sum = np.sum(y_vals)
        y_out[ix - 1] = y_sum

        if y_sum > 0:
            sig_out[ix - 1] = np.sqrt(np.sum((y_vals * sig_vals) ** 2)) / y_sum
        else:
            sig_out[ix - 1] = 0.0

    return x_mid, y_out, sig_out


# ---------------------------------------------------------------------------
# 5. Plot helpers
# ---------------------------------------------------------------------------
def sanitize_filename(name):
    return re.sub(r'[^A-Za-z0-9_.-]+', '_', name)


def plot_by_detector(data_by_detector, out_dir):
    """
    data_by_detector structure:
        {
            det_name: [
                {'case': case_name, 'x': ..., 'y': ..., 'sigma': ...},
                ...
            ]
        }
    """
    out_dir.mkdir(parents=True, exist_ok=True)

    for det_name, curves in data_by_detector.items():
        valid = [c for c in curves if c['x'] is not None]
        if not valid:
            continue

        colors = cm.tab10(np.linspace(0, 1, max(len(valid), 1)))
        fig, ax = plt.subplots(figsize=(12, 6))

        for curve, color in zip(valid, colors):
            x = curve['x']
            y = curve['y']
            sig = curve['sigma']
            yerr = y * sig

            ax.plot(x, y, lw=1.8, label=curve['case'], color=color)
            ax.fill_between(x, y - yerr, y + yerr, color=color, alpha=0.15)

        ax.set_xlabel("x position (cm)", fontsize=13)
        ax.set_ylabel("Flux / Reaction rate [arb. units]", fontsize=13)
        ax.set_title(f"Detector {det_name} - all cases", fontsize=14)
        ax.grid(True, linestyle='--', alpha=0.5)
        ax.legend(fontsize=9, ncol=2)
        ax.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

        plt.tight_layout()
        out_path = out_dir / f"{sanitize_filename(det_name)}_all_cases.png"
        plt.savefig(out_path, dpi=150)
        plt.close()
        print(f"[INFO] Saved -> {out_path}")



def plot_by_case(data_by_case, out_dir):
    """
    data_by_case structure:
        {
            case_name: {
                det_name: {'x': ..., 'y': ..., 'sigma': ...},
                ...
            }
        }
    """
    out_dir.mkdir(parents=True, exist_ok=True)

    for case_name, detectors in data_by_case.items():
        valid_items = [(det_name, d) for det_name, d in detectors.items() if d['x'] is not None]
        if not valid_items:
            continue

        colors = cm.tab10(np.linspace(0, 1, max(len(valid_items), 1)))
        fig, ax = plt.subplots(figsize=(12, 6))

        for (det_name, d), color in zip(valid_items, colors):
            x = d['x']
            y = d['y']
            sig = d['sigma']
            yerr = y * sig

            ax.plot(x, y, lw=1.8, label=det_name, color=color)
            ax.fill_between(x, y - yerr, y + yerr, color=color, alpha=0.15)

        ax.set_xlabel("x position (cm)", fontsize=13)
        ax.set_ylabel("Flux / Reaction rate [arb. units]", fontsize=13)
        ax.set_title(f"{case_name} - all detectors", fontsize=14)
        ax.grid(True, linestyle='--', alpha=0.5)
        ax.legend(fontsize=9, ncol=2)
        ax.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

        plt.tight_layout()
        out_path = out_dir / f"{sanitize_filename(case_name)}_all_detectors.png"
        plt.savefig(out_path, dpi=150)
        plt.close()
        print(f"[INFO] Saved -> {out_path}")


# ---------------------------------------------------------------------------
# 6. File discovery
# ---------------------------------------------------------------------------
def find_case_pairs(folder):
    """
    Find matching pairs like:
        concComp1.inp <-> concComp1_det0.m

    Returns list of tuples: (case_name, inp_path, det0_path)
    """
    inp_files = sorted(folder.glob("*.inp"))
    pairs = []

    for inp_path in inp_files:
        case_name = inp_path.stem
        det0_candidates = [
            folder / f"{case_name}_det0.m",
            folder / f"{case_name}.inp_det0.m",
            folder / f"{case_name}_inp_det0.m",
        ]

        det0_path = next((p for p in det0_candidates if p.exists()), None)
        if det0_path is None:
            wildcard_matches = sorted(folder.glob(f"{case_name}*det0.m"))
            if wildcard_matches:
                det0_path = wildcard_matches[0]

        if det0_path is None:
            print(f"[WARN] No det0 file found for {inp_path.name} - skipping case.")
            continue

        pairs.append((case_name, inp_path, det0_path))

    return pairs


# ---------------------------------------------------------------------------
# 7. Main
# ---------------------------------------------------------------------------
def main():
    if len(sys.argv) > 2:
        print("Usage: python plot_serpent_det_all_cases.py [chemComp_folder]")
        sys.exit(1)

    folder = Path(sys.argv[1]) if len(sys.argv) == 2 else Path("chemComp")
    if not folder.exists() or not folder.is_dir():
        print(f"[ERROR] Folder not found: {folder}")
        sys.exit(1)

    case_pairs = find_case_pairs(folder)
    if not case_pairs:
        print(f"[ERROR] No matching .inp / det0 pairs found in {folder}")
        sys.exit(1)

    data_by_case = {}
    data_by_detector = defaultdict(list)

    for case_name, inp_path, det0_path in case_pairs:
        print(f"[INFO] Processing case '{case_name}'")
        print(f"       input: {inp_path.name}")
        print(f"       det0 : {det0_path.name}")

        inp_text = inp_path.read_text()
        det0_text = det0_path.read_text()

        ng = parse_energy_grid(inp_text)
        det_names = parse_detector_names(inp_text)
        if not det_names:
            print(f"[WARN] No detectors found in {inp_path.name} - skipping case.")
            continue

        data_by_case[case_name] = {}

        for det_name in det_names:
            x, y, sigma = get_detector_data(det0_text, det_name, ng)

            # --- Restrict to x >= 0 ---
            if x is not None:
                mask = x >= 0.0
                x = x[mask]
                y = y[mask]
                sigma = sigma[mask]
            data_by_case[case_name][det_name] = {
                'x': x,
                'y': y,
                'sigma': sigma,
            }
            data_by_detector[det_name].append({
                'case': case_name,
                'x': x,
                'y': y,
                'sigma': sigma,
            })

            if x is not None and y is not None:
                nz = y > 0
                mean_sigma = np.mean(sigma[nz]) if np.any(nz) else 0.0
                print(
                    f"  -> {det_name}: {len(x)} x-bins, "
                    f"peak={np.max(y):.4e} ± {np.max(y) * mean_sigma:.2e}"
                )

    if not data_by_case:
        print("[ERROR] No valid case data extracted.")
        sys.exit(1)

    plot_root = folder / "plots"
    by_detector_dir = plot_root / "by_detector"
    by_case_dir = plot_root / "by_case"

    plot_by_detector(data_by_detector, by_detector_dir)
    plot_by_case(data_by_case, by_case_dir)

    print("\n[INFO] Done.")
    print(f"[INFO] Detector-overlaid plots: {by_detector_dir}")
    print(f"[INFO] Case-overlaid plots:     {by_case_dir}")


if __name__ == "__main__":
    main()
