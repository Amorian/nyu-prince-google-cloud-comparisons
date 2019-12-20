#!/bin/bash
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:p40:4
#SBATCH --time=10:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=multi-gpu
#SBATCH --mail-type=END
#SBATCH --mail-user=ak7380@nyu.edu
#SBATCH --output=multi-gpu-p40.out

cd /scratch/ak7380/multi-gpu
module purge
module load anaconda3/5.3.1
source activate multi-gpu
time python main.py -a resnet18 -b 256 --epochs 1 --lr 0.01 --multiprocessing-distributed --dist-url 'tcp://127.0.0.1:5143' --world-size 1 --rank 0 --dist-backend 'nccl' tiny-imagenet-200
