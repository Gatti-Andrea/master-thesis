#!/bin/bash

#BSUB -J supernovae              # Name of the job
#BSUB -M 16000                   # Memory limit (16GB)
#BSUB -R "rusage[mem=16000]"     # Resource request: 16GB memory
#BSUB -o supernovae_si_mpi.out   # Output file
#BSUB -e supernovae_si_mpi.err   # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)



# Run Cobaya with MPI
mpirun -np 4 cobaya-run supernovae.yaml
#~/software/anaconda3/envs/andrea_gatti4/bin/mpiexec -np 4 cobaya-run supernovae.yaml