#!/bin/bash

#BSUB -J planck_cmb_mr                    # Name of the job
#BSUB -M 16000                            # Memory limit (16GB)
#BSUB -R "rusage[mem=16000]"              # Resource request: 16GB memory
#BSUB -o planck_cmb_mr.out                # Output file
#BSUB -e planck_cmb_mr.err                # Error file
#BSUB -n 4                                # Number of cores
#BSUB -q long                             # Queue

#export PYTHONPATH=/home/mraveri/projects/andrea/tesi_magistrale/eftcamb/eftcamb_new
#echo "PYTHONPATH: $PYTHONPATH"
#python -c "import camb; print('CAMB loaded from:', camb.__file__)"


# Run Cobaya with MPI
mpirun -np 4 cobaya-run planck_cmb_mr.yaml --resume