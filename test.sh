#!/bin/sh

stdbuf -oL python train.py --train_batch_size=128 --train_steps=12 2>&1 | tee -a output_batchsize-128_umem-no.txt
stdbuf -oL python train.py --train_batch_size=256 --train_steps=12 2>&1 | tee -a output_batchsize-256_umem-no.txt
