#!/bin/bash

#BSUB -J w0wa_act_desidr2                 # Name of the job
#BSUB -M 64000                            # Memory limit (64GB)
#BSUB -R "rusage[mem=64000]"              # Resource request: 64GB memory
#BSUB -o w0wa_act_desidr2.out             # Output file
#BSUB -e w0wa_act_desidr2.err             # Error file
#BSUB -n 4                                # Number of cores
#BSUB -q long                             # Queue


# Run Cobaya with MPI
mpirun -np 4 cobaya-run w0wa_act_desidr2.yaml