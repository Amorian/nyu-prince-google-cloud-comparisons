#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:k80:1
#SBATCH --time=10:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=gan
#SBATCH --mail-type=END
#SBATCH --mail-user=rs6565@nyu.edu
#SBATCH --output=gan-mnist-k80.out

cd /scratch/rs6565/gan
module purge
module load anaconda3/5.3.1
source activate gan_mnist
time python gan_mnist_50.py
