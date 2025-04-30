#!/bin/bash

#BSUB -J act_all_w                    # Job name
#BSUB -M 64000                      # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"        # Resource request
#BSUB -q long                       # Queue
#BSUB -o act_all.out                # Output log
#BSUB -e act_all.err                # Error log
#BSUB -n 16                         # Total cores

# Set number of threads per chain (OMP = threads for linear algebra, etc.)
export OMP_NUM_THREADS=4

# Run Cobaya with MPI (4 chains using 4 threads each = 16 total cores)
mpirun -np 4 cobaya-run act_all.yaml