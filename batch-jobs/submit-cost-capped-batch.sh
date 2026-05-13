#!/usr/bin/env sh

npx @jungle-grid/cli@latest submit \
  --workload batch \
  --model-size 3 \
  --image python:3.11-slim \
  --command python \
  --arg -c \
  --arg "print('cost-capped batch run')" \
  --name cost-capped-batch \
  --optimize-for cost \
  --max-price-hour 1.00 \
  --cost-priority high \
  --latency-priority low
