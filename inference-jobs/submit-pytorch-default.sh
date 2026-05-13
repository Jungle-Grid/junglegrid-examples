#!/usr/bin/env sh

npx @jungle-grid/cli@latest submit \
  --workload inference \
  --model-size 7 \
  --image pytorch/pytorch:2.4.0-cuda12.1-cudnn9-runtime \
  --name pytorch-default-infer
