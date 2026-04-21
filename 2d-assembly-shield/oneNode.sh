#!/bin/bash
#SBATCH -J "bare"
#SBATCH  -p newq
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH -n 4
time mpirun -np 2 sss2 -omp 1 2d.inp
