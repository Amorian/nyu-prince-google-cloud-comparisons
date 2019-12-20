#!/usr/bin/env bash
source activate imagenet
time python main.py -a resnet18 -b 256 --epochs 10 --lr 0.01 tiny-imagenet-200 > imagenet-output.txt 2>&1
