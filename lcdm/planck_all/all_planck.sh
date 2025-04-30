#!/bin/bash

#BSUB -J all_pl                  # Name of the job
#BSUB -M 64000                   # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"     # Resource request: 64GB memory
#BSUB -q long                    # Queue
#BSUB -o all_planck.out          # Output file
#BSUB -e all_planck.err          # Error file
#BSUB -n 16                      # Request 4 cores (adjust as needed)

# Set number of threads per chain (OMP = threads for linear algebra, etc.)
export OMP_NUM_THREADS=4

# Run Cobaya with MPI
mpirun -np 4 cobaya-run all_planck.yaml