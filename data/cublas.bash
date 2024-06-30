#!/bin/bash

EXE="/orfeo/cephfs/home/dssc/lleonvega/software/efimon-nvml/builddir/examples/nvidia-ml-measurement"
TEST="/u/dssc/lleonvega/software/cuda-samples/Samples/4_CUDA_Libraries/batchCUBLAS/batchCUBLAS"

# Take samples
for i in 500 1000 10000 20000 50000 100000 200000 500000; do
  echo ${i}
  $EXE -c $TEST ${i} > cublas/efimon-${i}.log
  mv nvprof-log.log cublas/nvprof-${i}.log
done
