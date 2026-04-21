#!/bin/bash
#SBATCH -J "concComp6"
#SBATCH  -p newq
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH -n 4

export OMP_NUM_THREADS=1
time mpirun -np 2 sss2 -omp 1 concComp6.inp
