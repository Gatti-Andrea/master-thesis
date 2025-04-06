#!/bin/bash

#BSUB -J planck_bao              # Name of the job
#BSUB -M 16000                   # Memory limit (16GB)
#BSUB -R "rusage[mem=16000]"     # Resource request: 16GB memory
#BSUB -o planck_bao_camb_mpi.out # Output file
#BSUB -e supernovae_no_mpi.err   # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)

# Run Cobaya with MPI
mpirun -np 4 cobaya-run planck_bao_camb.yaml