#!/usr/bin/env bash
source activate gan_mnist
time python gan_mnist_50.py > gan-output.txt 2>&1
