#!/bin/sh

script_path="`dirname $0`"

source $script_path/env.sh

stdbuf -oL python $script_path/train.py --train_batch_size=128 --train_steps=12 2>&1 | tee -a $script_path/output_batchsize-128_umem-no.txt
stdbuf -oL python $script_path/train.py --train_batch_size=256 --train_steps=12 2>&1 | tee -a $script_path/output_batchsize-256_umem-no.txt
