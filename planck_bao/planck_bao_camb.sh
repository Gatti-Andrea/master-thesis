#!/bin/bash

#BSUB -J planck_bao_camb         # Name of the job
#BSUB -M 64000                   # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"     # Resource request: 64GB memory
#BSUB -q long                    # Queue
#BSUB -o planck_bao_camb.out     # Output file
#BSUB -e planck_bao_camb.err     # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)


# Run Cobaya with MPI
mpirun -np 4 cobaya-run planck_bao_camb.yaml --resume
