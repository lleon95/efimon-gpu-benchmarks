#!/bin/bash

EXE="/orfeo/cephfs/home/dssc/lleonvega/software/efimon-nvml/builddir/examples/nvidia-ml-measurement"
TEST="/u/dssc/lleonvega/software/cuda-samples/Samples/3_CUDA_Features/cudaTensorCoreGemm/cudaTensorCoreGemm"

# Take samples
for i in 500 1000 10000 20000 50000 100000 200000 500000; do
  echo ${i}
  $EXE -c $TEST ${i} > cuda-tensor/efimon-${i}.log
  mv nvprof-log.log cuda-tensor/nvprof-${i}.log
done
