# Windsurf

Use Jungle Grid from Windsurf Cascade through MCP.

## Prerequisites

- Node.js 18+
- Windsurf with Cascade MCP support enabled
- A Jungle Grid API key generated in the portal

## Setup

1. Open the Windsurf MCP raw configuration.
   - The current Windsurf docs describe `~/.codeium/windsurf/mcp_config.json` as the raw MCP config file for Windsurf.
   - Some Cascade plugin docs also mention `~/.codeium/mcp_config.json`; use the path shown by your installed Windsurf version when you select **View Raw Config**.
2. Merge the `mcpServers.junglegrid` entry from [mcp_config.json.example](mcp_config.json.example) into the raw config.
3. Replace `jg_...` with a real API key.
4. Press the MCP refresh button or restart Windsurf so Cascade reloads the server.

## Optional API URL

Most users should omit `JUNGLE_GRID_API_URL` and use the default Jungle Grid API.
Set it only when you are targeting a non-default environment, such as local
development, staging, or a private deployment.

## Verify

Open Cascade's MCP tools panel and confirm that the Jungle Grid server is
available. The Jungle Grid MCP docs describe tools such as job submission,
status, estimate, log, and artifact helpers.

References:

- Jungle Grid MCP docs: <https://junglegrid.dev/docs/mcp>
- Windsurf MCP docs: <https://docs.windsurf.com/windsurf/cascade/mcp>
