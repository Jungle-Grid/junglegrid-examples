# Junglegrid Examples

Runnable examples for using [Jungle Grid](https://junglegrid.dev) from the CLI, MCP-aware AI hosts, and your own backend services.

Jungle Grid is a workload-first GPU orchestration platform. You describe the job you want to run, and Jungle Grid handles fit checks, placement, logs, and failure recovery without making you choose cloud providers or GPU models manually.

## What is in this repo

- `claude-desktop/` — Claude Desktop MCP configuration examples
- `cursor/` — Cursor MCP configuration examples
- `inference-jobs/` — runnable CLI templates for inference workloads
- `batch-jobs/` — runnable CLI templates for batch workloads
- `prompts/` — prompts for turning natural-language requests into valid Jungle Grid jobs
- `api/` — server-side REST integration examples for Node.js and Python

## Quick start

1. Create a Jungle Grid account and sign in via the browser:
   - Docs: <https://junglegrid.dev/docs>
   - Portal: <https://junglegrid.dev/portal>
2. Authenticate the CLI on the machine where you want to submit workloads:

```sh
npx @jungle-grid/cli@latest login
```

3. Verify the session:

```sh
npx @jungle-grid/cli@latest whoami
```

4. Submit a first workload:

```sh
npx @jungle-grid/cli@latest submit \
  --workload inference \
  --model-size 7 \
  --image pytorch/pytorch:2.4.0-cuda12.1-cudnn9-runtime \
  --name chat-infer
```

5. Inspect the job:

```sh
npx @jungle-grid/cli@latest jobs
npx @jungle-grid/cli@latest status <job-id>
```

## Examples by surface

### CLI jobs

- Start with [inference-jobs/README.md](/home/invinc/code/junglegrid-examples/inference-jobs/README.md) for inference templates.
- Start with [batch-jobs/README.md](/home/invinc/code/junglegrid-examples/batch-jobs/README.md) for batch templates.

These examples use public images and current `@jungle-grid/cli` flags from the live docs. They are designed to be copied, then adjusted for your own image, command, and model size.

### Claude Desktop and Cursor

- [claude-desktop/README.md](/home/invinc/code/junglegrid-examples/claude-desktop/README.md)
- [cursor/README.md](/home/invinc/code/junglegrid-examples/cursor/README.md)

Both examples use the current MCP package:

```json
{
  "command": "npx",
  "args": ["-y", "@jungle-grid/mcp"]
}
```

Set `JUNGLE_GRID_API_KEY` in the MCP server environment. Do not commit real keys.

### REST API

The examples in [api/README.md](/home/invinc/code/junglegrid-examples/api/README.md) show the recommended server-side pattern:

- keep `JUNGLE_GRID_API_KEY` on the server
- forward only approved fields to `https://api.junglegrid.dev`
- call `/v1/jobs/estimate` before `/v1/jobs` when you need a preview

## Product references

Use the live product docs as the source of truth when adapting these templates:

- Docs home: <https://junglegrid.dev/docs>
- CLI reference: <https://junglegrid.dev/docs/cli>
- API reference: <https://junglegrid.dev/docs/api>
- MCP integration: <https://junglegrid.dev/docs/mcp>
- Release notes: use the release notes section linked from <https://junglegrid.dev/docs>

## Help and community

- Help email: `run@junglegrid.dev`
- Discord: <https://discord.gg/kpJqxXFFCs>

Use email for account, product, or integration support. Use Discord for community discussion, setup help, and example-sharing.

## Open-source safety

- Do not commit `JUNGLE_GRID_API_KEY` or other credentials.
- Do not embed private registry credentials in example files.
- Keep API keys server-side only. Never expose them in browser code, static sites, or mobile apps.
- Review your image references and commands before sharing examples publicly.

## Contributing

See [CONTRIBUTING.md](/home/invinc/code/junglegrid-examples/CONTRIBUTING.md) for contribution guidelines. New examples should be runnable, documented, and safe to publish.

## License

This repository is licensed under the MIT License. See [LICENSE](/home/invinc/code/junglegrid-examples/LICENSE).

## Security

See [SECURITY.md](/home/invinc/code/junglegrid-examples/SECURITY.md) for vulnerability reporting instructions.
