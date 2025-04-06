#!/bin/bash

#BSUB -J act                     # Name of the job
#BSUB -M 64000                   # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"     # Resource request: 64GB memory
#BSUB -q long                    # Queue
#BSUB -o act.out                 # Output file
#BSUB -e act.err                 # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)


# Run Cobaya with MPI
mpirun -np 4 cobaya-run act.yaml --resume