# Inference Jobs

Runnable starter templates for submitting inference workloads with the Jungle Grid CLI.

## Prerequisites

- Node.js 18+
- Authenticated CLI session:

```sh
npx @jungle-grid/cli@latest login
```

## Templates

- [submit-pytorch-default.sh](/home/invinc/code/junglegrid-examples/inference-jobs/submit-pytorch-default.sh) — minimal inference submission using an image default entrypoint
- [submit-inline-python.sh](/home/invinc/code/junglegrid-examples/inference-jobs/submit-inline-python.sh) — simple Python command executed directly in the container
- [submit-artifact-writer.sh](/home/invinc/code/junglegrid-examples/inference-jobs/submit-artifact-writer.sh) — writes output under `/workspace/artifacts`

Adjust `--model-size`, image, and command to match the workload you actually want to run.
