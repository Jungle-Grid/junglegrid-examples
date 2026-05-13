#!/usr/bin/env sh

npx @jungle-grid/cli@latest submit \
  --workload batch \
  --model-size 1 \
  --image python:3.11-slim \
  --command python \
  --arg -c \
  --arg "print('batch processing finished')" \
  --name python-batch \
  --optimize-for cost
