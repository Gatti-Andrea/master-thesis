#!/bin/bash

#BSUB -J desidr2_w               # Name of the job
#BSUB -M 32000                   # Memory limit (32GB)
#BSUB -R "rusage[mem=32000]"     # Resource request: 32GB memory
#BSUB -q long                    # Queue
#BSUB -o desidr2.out             # Output file
#BSUB -e desidr2.err             # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)


# Run Cobaya with MPI
mpirun -np 4 cobaya-run desidr2.yaml --resume