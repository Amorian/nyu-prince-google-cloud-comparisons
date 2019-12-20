source activate multi-gpu
time python main.py -a resnet18 -b 256 --epochs 1 --lr 0.01 --multiprocessing-distributed --dist-url 'tcp://127.0.0.1:5143' --world-size 1 --rank 0 --dist-backend 'nccl' tiny-imagenet-200 > multi-gpu-output.txt 2>&1
