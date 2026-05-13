# Claude Desktop

Use Jungle Grid from Claude Desktop through MCP.

## Prerequisites

- Node.js 18+
- Claude Desktop
- A Jungle Grid API key generated in the portal

## Setup

1. Copy [claude_desktop_config.json.example](/home/invinc/code/junglegrid-examples/claude-desktop/claude_desktop_config.json.example) into your Claude Desktop config file.
2. Replace `jg_...` with a real API key.
3. Restart Claude Desktop fully.

Common config locations from the Jungle Grid MCP docs:

- macOS: `~/Library/Application Support/Claude/claude_desktop_config.json`
- Windows: `%APPDATA%\\Claude\\claude_desktop_config.json`

## Verify

Start Claude Desktop and confirm the Jungle Grid MCP tools appear. The live docs describe tools such as `submit_job`, `get_job`, `list_jobs`, `estimate_job`, and log/artifact helpers.

Reference: <https://junglegrid.dev/docs/mcp>
