#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:p100:1
#SBATCH --time=10:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=imagenet
#SBATCH --mail-type=END
#SBATCH --mail-user=rs6565@nyu.edu
#SBATCH --output=imagenet-p100.out

cd /scratch/rs6565/imagenet/
module purge
module load anaconda3/5.3.1
source activate imagenet
time python main.py -a resnet18 -b 256 --epochs 1 --lr 0.01 tiny-imagenet-200
