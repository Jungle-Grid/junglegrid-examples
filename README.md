<div align="center">
  <a href="https://junglegrid.dev">
    <img src="./assets/junglegrid-logo.png" alt="Jungle Grid logo" width="128">
  </a>

  <h1>Jungle Grid Examples</h1>

  <p><strong>Runnable templates for the Jungle Grid CLI, MCP hosts, and backend API integrations.</strong></p>

  <p>
    <a href="https://junglegrid.dev"><img alt="Website" src="https://img.shields.io/badge/Visit-junglegrid.dev-111827?style=for-the-badge"></a>
    <a href="https://junglegrid.dev/docs"><img alt="Docs" src="https://img.shields.io/badge/Read-the_docs-2563eb?style=for-the-badge"></a>
    <a href="https://x.com/jungle_grid"><img alt="Follow Jungle Grid on X" src="https://img.shields.io/badge/Follow-@jungle__grid-000000?style=for-the-badge&logo=x"></a>
    <a href="https://discord.gg/kpJqxXFFCs"><img alt="Join the Jungle Grid Discord" src="https://img.shields.io/badge/Join-Discord-5865f2?style=for-the-badge&logo=discord&logoColor=white"></a>
    <a href="mailto:run@junglegrid.dev"><img alt="Email Jungle Grid" src="https://img.shields.io/badge/Email-run@junglegrid.dev-16a34a?style=for-the-badge"></a>
    <a href="./LICENSE"><img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-f97316?style=for-the-badge"></a>
  </p>
</div>

Runnable examples for using [Jungle Grid](https://junglegrid.dev) from the CLI, MCP-aware AI hosts, and your own backend services.

Jungle Grid is a workload-first GPU orchestration platform. You describe the job you want to run, and Jungle Grid handles fit checks, placement, logs, and failure recovery without making you choose cloud providers or GPU models manually.

## What is in this repo

- `claude-desktop/` - Claude Desktop MCP configuration examples
- `cursor/` - Cursor MCP configuration examples
- `windsurf/` - Windsurf Cascade MCP configuration examples
- `mcp-hosts/` - generic MCP host configuration reference
- `inference-jobs/` - runnable CLI templates for inference workloads
- `batch-jobs/` - runnable CLI templates for batch workloads
- `prompts/` - prompts for turning natural-language requests into valid Jungle Grid jobs
- `api/` - server-side REST integration examples for Node.js and Python

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

- Start with [inference-jobs/README.md](inference-jobs/README.md) for inference templates.
- Start with [batch-jobs/README.md](batch-jobs/README.md) for batch templates.

These examples use public images and current `@jungle-grid/cli` flags from the live docs. They are designed to be copied, then adjusted for your own image, command, and model size.

### MCP hosts

- [claude-desktop/README.md](claude-desktop/README.md)
- [cursor/README.md](cursor/README.md)
- [windsurf/README.md](windsurf/README.md)
- [mcp-hosts/README.md](mcp-hosts/README.md)

These examples use the current MCP package:

```json
{
  "command": "npx",
  "args": ["-y", "@jungle-grid/mcp"]
}
```

Set `JUNGLE_GRID_API_KEY` in the MCP server environment. Use `JUNGLE_GRID_API_URL` only when targeting a non-default Jungle Grid API environment, such as local development, staging, or a private deployment. Do not commit real keys.

### REST API

The examples in [api/README.md](api/README.md) show the recommended server-side pattern:

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

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines. New examples should be runnable, documented, and safe to publish.

## License

This repository is licensed under the MIT License. See [LICENSE](LICENSE).

## Security

See [SECURITY.md](SECURITY.md) for vulnerability reporting instructions.
