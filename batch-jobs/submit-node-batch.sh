#!/usr/bin/env sh

npx @jungle-grid/cli@latest submit \
  --workload batch \
  --model-size 1 \
  --image node:22-alpine \
  --command node \
  --arg -e \
  --arg "console.log('batch job complete')" \
  --name node-batch \
  --optimize-for cost
