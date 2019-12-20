#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:v100:1
#SBATCH --time=1:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=glove
#SBATCH --mail-type=END
#SBATCH --mail-user=xl2715@nyu.edu
#SBATCH --output=glove-v100.out

cd /scratch/xl2715/glove
module purge
module load anaconda3/5.3.1
source activate glove
time python glove.py > glove-output.txt 2>&1
