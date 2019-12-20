#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:p100:1
#SBATCH --time=10:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=benchmark
#SBATCH --mail-type=END
#SBATCH --mail-user=ak7380@nyu.edu
#SBATCH --output=benchmark-p100.out

cd /scratch/ak7380/Benchmark/deep-learning-benchmark
module purge
module load anaconda3/5.3.1
source activate benchmark
time (python benchmark.py -f pytorch ; python benchmark.py -f tensorflow)
