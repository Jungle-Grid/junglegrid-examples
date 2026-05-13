# Jungle Grid Job Speckit

Convert a user request into this JSON object:

```json
{
  "name": "short-job-name",
  "workload_type": "inference",
  "image": "python:3.11-slim",
  "model_size_gb": 1,
  "command": ["python", "-c", "print('hello')"],
  "optimize_for": "cost"
}
```

Rules:

- Allowed `workload_type`: `inference`, `batch`, `training`
- Use `optimize_for` of `cost` or `speed`; default to `cost` unless the user is clearly latency-sensitive
- Prefer public images
- Keep commands short and runnable
- Do not include secrets
- If the user does not provide a model size, choose a conservative estimate and say it is an estimate
