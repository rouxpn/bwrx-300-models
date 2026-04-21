#!/bin/bash
cd "$(dirname "$0")"

sbatch run_concComp1.slurm
sbatch run_concComp2.slurm
sbatch run_concComp3.slurm
sbatch run_concComp4.slurm
sbatch run_concComp5.slurm
sbatch run_concComp6.slurm
