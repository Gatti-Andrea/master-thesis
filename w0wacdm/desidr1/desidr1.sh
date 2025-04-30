#!/bin/bash

#BSUB -J w_desidr1                 # Job name
#BSUB -M 64000                     # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"       # Resource request
#BSUB -q long                      # Queue
#BSUB -o desidr1.out               # Output log
#BSUB -e desidr1.err               # Error log
#BSUB -n 16                        # Total cores

# Set number of threads per chain (OMP = threads for linear algebra, etc.)
export OMP_NUM_THREADS=4

# Run Cobaya with MPI (4 chains using 4 threads each = 16 total cores)
mpirun -np 4 cobaya-run desidr1.yaml