#!/bin/bash

HIP_VISIBLE_DEVICES=0 python3 benchmark.py --batch-size $1 &
HIP_VISIBLE_DEVICES=1 python3 benchmark.py --batch-size $1 && fg
