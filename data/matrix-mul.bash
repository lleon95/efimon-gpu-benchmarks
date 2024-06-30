#!/bin/bash

EXE="/orfeo/cephfs/home/dssc/lleonvega/software/efimon-nvml/builddir/examples/nvidia-ml-measurement"
TEST="/u/dssc/lleonvega/software/cuda-samples/Samples/0_Introduction/matrixMul/matrixMul -wA=4096 -hA=4096 -wB=4096 -hB=4096"

# Take samples
for i in 500000; do
  echo ${i}
  $EXE -c $TEST -s=${i} > matrix-mul/efimon-${i}.log
  mv nvprof-log.log matrix-mul/nvprof-${i}.log
done
