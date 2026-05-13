#!/usr/bin/env sh

npx @jungle-grid/cli@latest submit \
  --workload inference \
  --model-size 1 \
  --image python:3.11-slim \
  --command python \
  --arg -c \
  --arg "print('hello from Jungle Grid inference')" \
  --name python-inline-infer \
  --optimize-for cost
