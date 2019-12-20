#!/usr/bin/env bash
source activate sentiment-analysis
python -m spacy download en
time python simple_sentiment_analysis.py > sentiment-analysis-output.txt 2>&1
