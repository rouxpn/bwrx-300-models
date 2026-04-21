#!/usr/bin/env python3
"""
gen_inputs_c_slurm_chemComp.py

Usage:
    python3 gen_inputs_c_slurm_chemComp.py <base_input.inp> <chemComp.csv>

Reads the CSV for densities (row 0) and weight-percent compositions
(columns 3..8 = Comp1..Comp6), then writes:
    chemComp/concComp1.inp ... chemComp/concComp6.inp
    chemComp/run_concComp1.slurm ... chemComp/run_concComp6.slurm
    chemComp/submit_all.sh

The script replaces the mat mConcrete block in the base Serpent input.

ZAID rule: Z*1000 + A  (e.g. Pb-204 -> 82204, U-235 -> 92235, H-1 -> 1001)
Weight fractions: normalised to sum=1, written as negative values (Serpent convention).
Cross-section suffix: .03c  -- change XS_SUFFIX below if needed.

python3 gen_inputs_c_slurm_chemComp.py 2d.inp chemComp.csv
cd chemComp
./submit_all.sh
"""

import csv
import re
import sys
from pathlib import Path

XS_SUFFIX = "00c"
SLURM_PARTITION = "newq"
SLURM_TIME = "10:00:00"
SLURM_NODES = 1
SLURM_NTASKS = 4
MPI_RANKS = 2
OMP_THREADS = 1
SERPENT_EXE = "sss2"
OUTPUT_DIR_NAME = "chemComp"

ELEMENT_SYMBOLS = {
    'H':1,'He':2,'Li':3,'Be':4,'B':5,'C':6,'N':7,'O':8,'F':9,'Ne':10,
    'Na':11,'Mg':12,'Al':13,'Si':14,'P':15,'S':16,'Cl':17,'Ar':18,
    'K':19,'Ca':20,'Sc':21,'Ti':22,'V':23,'Cr':24,'Mn':25,'Fe':26,
    'Co':27,'Ni':28,'Cu':29,'Zn':30,'Ga':31,'Ge':32,'As':33,'Se':34,
    'Br':35,'Kr':36,'Rb':37,'Sr':38,'Y':39,'Zr':40,'Nb':41,'Mo':42,
    'Tc':43,'Ru':44,'Rh':45,'Pd':46,'Ag':47,'Cd':48,'In':49,'Sn':50,
    'Sb':51,'Te':52,'I':53,'Xe':54,'Cs':55,'Ba':56,'La':57,'Ce':58,
    'Pr':59,'Nd':60,'Pm':61,'Sm':62,'Eu':63,'Gd':64,'Tb':65,'Dy':66,
    'Ho':67,'Er':68,'Tm':69,'Yb':70,'Lu':71,'Hf':72,'Ta':73,'W':74,
    'Re':75,'Os':76,'Ir':77,'Pt':78,'Au':79,'Hg':80,'Tl':81,'Pb':82,
    'Bi':83,'Po':84,'At':85,'Rn':86,'Fr':87,'Ra':88,'Ac':89,'Th':90,
    'Pa':91,'U':92,'Np':93,'Pu':94,'Am':95,'Cm':96,
}


def zaid_from_label(label: str):
    """Convert labels like 'Pb-204' -> 82204, 'U-235' -> 92235, 'H-1' -> 1001."""
    match = re.match(r'([A-Za-z]+)-(\d+)', label.strip())
    if not match:
        return None
    symbol = match.group(1).capitalize()
    mass_number = int(match.group(2))
    z = ELEMENT_SYMBOLS.get(symbol)
    if z is None:
        return None
    return z * 1000 + mass_number


def parse_csv(csv_path: Path):
    """
    Returns:
        densities : list[float] of length 6 for Comp1..Comp6
        rows      : list of tuples (zaid, [comp1..comp6])
    """
    densities = []
    rows = []

    with csv_path.open(newline='') as fh:
        reader = csv.reader(fh)
        for i, row in enumerate(reader):
            if i == 0:
                try:
                    densities = [float(row[c]) for c in range(3, 9)]
                except (IndexError, ValueError) as exc:
                    raise ValueError(
                        "Could not read densities from CSV row 0, columns 3..8"
                    ) from exc
                continue

            if i < 4:
                continue

            if not row or not row[0].strip():
                continue

            label = row[0].strip()
            zaid = zaid_from_label(label)
            if zaid is None:
                print(f"WARNING: could not parse ZAID from '{label}', skipping.")
                continue

            vals = []
            for col in range(3, 9):
                cell = row[col].strip() if col < len(row) else ''
                try:
                    value = float(cell)
                    vals.append(value if value > 0.0 else None)
                except (ValueError, TypeError):
                    vals.append(None)

            rows.append((zaid, vals))

    if len(densities) != 6:
        raise ValueError(f"Expected 6 densities, found {len(densities)}")

    return densities, rows


def build_mat_block(density: float, rows, comp_idx: int) -> str:
    """Build the replacement mat mConcrete block."""
    entries = [(zaid, vals[comp_idx]) for zaid, vals in rows if vals[comp_idx] is not None]
    total = sum(value for _, value in entries)

    if total <= 0.0:
        raise ValueError(f"Composition {comp_idx + 1} has no positive weight fractions.")

    lines = [f"mat mConcrete -{density:.4f} tmp 350 rgb 50 50 50"]
    for zaid, value in entries:
        wf = value / total
        lines.append(f"    {zaid}.{XS_SUFFIX}  -{wf:.8f}")
    return "\n".join(lines)


def replace_concrete_block(inp_text: str, new_block: str) -> str:
    """
    Replace the mat mConcrete block header + following isotope lines.
    """
    pattern = re.compile(
        r'^mat mConcrete\s+.*?$'
        r'(?:\n[ \t]+\d.*$)*',
        re.MULTILINE,
    )
    result, n = pattern.subn(new_block, inp_text)
    if n == 0:
        raise ValueError("mat mConcrete block not found in input file.")
    if n > 1:
        raise ValueError(f"Found {n} mat mConcrete blocks; expected exactly 1.")
    return result


def build_slurm_script(input_filename: str, job_name: str) -> str:
    """Return Slurm script text for one Serpent case."""
    return f"""#!/bin/bash
#SBATCH -J "{job_name}"
#SBATCH  -p {SLURM_PARTITION}
#SBATCH -t {SLURM_TIME}
#SBATCH -N {SLURM_NODES}
#SBATCH -n {SLURM_NTASKS}

export OMP_NUM_THREADS={OMP_THREADS}
time mpirun -np {MPI_RANKS} {SERPENT_EXE} -omp {OMP_THREADS} {input_filename}
"""


def write_submit_all_script(out_dir: Path, slurm_files):
    """Write helper script to submit all Slurm jobs."""
    submit_path = out_dir / "submit_all.sh"
    lines = [
        "#!/bin/bash",
        'cd "$(dirname "$0")"',
        "",
    ]
    for slurm_name in slurm_files:
        lines.append(f"sbatch {slurm_name}")
    lines.append("")
    submit_path.write_text("\n".join(lines))
    submit_path.chmod(0o755)
    return submit_path


def main():
    if len(sys.argv) != 3:
        print("Usage: python3 gen_inputs_c_slurm_chemComp.py <base_input.inp> <chemComp.csv>")
        sys.exit(1)

    inp_path = Path(sys.argv[1]).expanduser().resolve()
    csv_path = Path(sys.argv[2]).expanduser().resolve()

    if not inp_path.exists():
        print(f"ERROR: input file not found: {inp_path}")
        sys.exit(1)
    if not csv_path.exists():
        print(f"ERROR: CSV file not found: {csv_path}")
        sys.exit(1)

    out_dir = inp_path.parent / OUTPUT_DIR_NAME
    out_dir.mkdir(parents=True, exist_ok=True)

    densities, rows = parse_csv(csv_path)
    inp_text = inp_path.read_text()

    slurm_files = []

    for i in range(6):
        comp_num = i + 1
        density = densities[i]

        mat_block = build_mat_block(density, rows, i)
        new_input_text = replace_concrete_block(inp_text, mat_block)

        input_filename = f"concComp{comp_num}.inp"
        input_path = out_dir / input_filename
        input_path.write_text(new_input_text)

        n_iso = sum(1 for _, vals in rows if vals[i] is not None)
        print(
            f"Wrote {input_path} | density = -{density:.4f} g/cm3 | {n_iso} isotopes"
        )

        slurm_filename = f"run_concComp{comp_num}.slurm"
        slurm_path = out_dir / slurm_filename
        slurm_text = build_slurm_script(
            input_filename=input_filename,
            job_name=f"concComp{comp_num}",
        )
        slurm_path.write_text(slurm_text)
        slurm_path.chmod(0o755)
        slurm_files.append(slurm_filename)
        print(f"Wrote {slurm_path}")

    submit_path = write_submit_all_script(out_dir, slurm_files)
    print(f"Wrote {submit_path}")
    print(f"\nDone. All generated files are in: {out_dir}")


if __name__ == '__main__':
    main()