#!/usr/bin/env bash
# Set walltime limit
#BSUB -W 24:00
#
# Set output file
#BSUB -o  md.26.0.out
#
# Set error file
#BSUB -eo md.26.0.stderr
#
# Specify node group
#BSUB -m "lu-gpu lv-gpu ld-gpu lt-gpu lp-gpu lg-gpu boson"
#BSUB -q gpuqueue
#
# nodes: number of nodes and GPU request
#BSUB -n 1 -R "rusage[mem=12]"
#BSUB -gpu "num=1:j_exclusive=yes:mode=shared"
#
# job name (default = name of script file)
#BSUB -J "26 0"
source ~/.bashrc
conda activate simenv2
module load cuda/10.1
python sim.py "/data/chodera/viktor/ip3r-type2"