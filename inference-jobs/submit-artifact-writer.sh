#!/usr/bin/env sh

npx @jungle-grid/cli@latest submit \
  --workload inference \
  --model-size 1 \
  --image python:3.11-slim \
  --command python \
  --arg -c \
  --arg "import json, os; os.makedirs('/workspace/artifacts', exist_ok=True); json.dump({'status': 'ok'}, open('/workspace/artifacts/output.json', 'w'))" \
  --name artifact-writer \
  --optimize-for cost
