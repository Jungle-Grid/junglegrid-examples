# Generic MCP Hosts

Use this reference when an MCP-aware host supports stdio servers but does not
have a dedicated Jungle Grid example yet.

## Server command

```json
{
  "command": "npx",
  "args": ["-y", "@jungle-grid/mcp"],
  "env": {
    "JUNGLE_GRID_API_KEY": "jg_..."
  }
}
```

## Environment variables

- `JUNGLE_GRID_API_KEY` is required. Generate it in the Jungle Grid portal and
  keep it out of source control.
- `JUNGLE_GRID_API_URL` is optional. Omit it for the default hosted Jungle Grid
  API. Set it only for local development, staging, or private deployments.

## Host-specific notes

Different MCP hosts wrap stdio servers in different config shapes:

- some use `mcpServers.<name>`;
- some use `servers.<name>`;
- some place `command`, `args`, and `env` directly under a server entry;
- some require a UI refresh or full app restart after editing config.

Keep the server command and environment values the same, then adapt only the
outer JSON shape required by your host.

Reference: <https://junglegrid.dev/docs/mcp>
