#!/bin/bash

#BSUB -J lcdm_eft_cos                     # Name of the job
#BSUB -M 64000                            # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"              # Resource request: 64GB memory
#BSUB -o lcdm_eft_cos.out                 # Output file
#BSUB -e lcdm_eft_cos.err                 # Error file
#BSUB -n 4                                # Number of cores
#BSUB -q long                             # Queue


# Run Cobaya with MPI
mpirun -np 4 cobaya-run lcdm_eft_cos.yaml