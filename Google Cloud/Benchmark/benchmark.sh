#!/bin/bash
cd deep-learning-benchmark
source activate benchmark
time (python benchmark.py -f pytorch ; python benchmark.py -f tensorflow) > benchmark-output.txt 2>&1
