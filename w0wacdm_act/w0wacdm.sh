#!/bin/bash

#BSUB -J w0wacdm                 # Name of the job
#BSUB -M 64000                   # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"     # Resource request: 64GB memory
#BSUB -q long                    # Queue
#BSUB -o w0wacdm.out             # Output file
#BSUB -e w0wacdm.err             # Error file
#BSUB -n 4                       # Request 4 cores (adjust as needed)


# Run Cobaya with MPI
mpirun -np 4 cobaya-run w0wacdm.yaml
