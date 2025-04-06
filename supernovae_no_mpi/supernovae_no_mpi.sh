#!/bin/bash

#BSUB -J supernovae_no_mpi       # Name of the job
#BSUB -M 16000                   # Memory limit (16GB)
#BSUB -R "rusage[mem=16000]"     # Resource request: 16GB memory
#BSUB -o supernovae_no_mpi.out   # Output file
#BSUB -e supernovae_no_mpi.err   # Error file

# Load Conda environment explicitly
#source /home/mraveri/software/anaconda3/etc/profile.d/conda.sh
#conda activate andrea_gatti


# Run the Cobaya file
cobaya-run supernovae.yaml