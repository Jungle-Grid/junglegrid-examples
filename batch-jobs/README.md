# Batch Jobs

Runnable starter templates for batch workloads with the Jungle Grid CLI.

## Prerequisites

- Node.js 18+
- Authenticated CLI session:

```sh
npx @jungle-grid/cli@latest login
```

## Templates

- [submit-node-batch.sh](/home/invinc/code/junglegrid-examples/batch-jobs/submit-node-batch.sh) — run a small Node.js batch task
- [submit-python-batch.sh](/home/invinc/code/junglegrid-examples/batch-jobs/submit-python-batch.sh) — run a small Python batch task
- [submit-cost-capped-batch.sh](/home/invinc/code/junglegrid-examples/batch-jobs/submit-cost-capped-batch.sh) — batch job with cost-oriented routing hints

Batch templates default toward public images and lower-cost routing so they are safe starter examples.
