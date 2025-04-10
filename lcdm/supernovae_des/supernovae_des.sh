#!/bin/bash

#BSUB -J supernovae_des          # Name of the job
#BSUB -M 16000                   # Memory limit (16GB)
#BSUB -R "rusage[mem=16000]"     # Resource request: 16GB memory
#BSUB -o supernovae_des.out      # Output file
#BSUB -e supernovae_des.err      # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)



# Run Cobaya with MPI
mpirun -np 4 cobaya-run supernovae_des.yaml