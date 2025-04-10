#!/bin/bash

#BSUB -J planck                    # Name of the job
#BSUB -M 64000                     # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"       # Resource request: 64GB memory
#BSUB -q long                      # Queue
#BSUB -o planck.out                # Output file
#BSUB -e planck.err                # Error file
#BSUB -n 4                         # Number of cores

# Run Cobaya with MPI
mpirun -np 4 cobaya-run planck.yaml --resume