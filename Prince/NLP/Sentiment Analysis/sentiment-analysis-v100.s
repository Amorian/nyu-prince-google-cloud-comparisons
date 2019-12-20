#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:v100:1
#SBATCH --time=1:00:00
#SBATCH --mem=20GB
#SBATCH --job-name=sentiment-analysis
#SBATCH --mail-type=END
#SBATCH --mail-user=xl2715@nyu.edu
#SBATCH --output=sentiment-analysis-v100.out

cd /scratch/xl2715/sentiment-analysis
module purge
module load anaconda3/5.3.1
source activate sentiment-analysis
python -m spacy download en
time python simple_sentiment_analysis.py
