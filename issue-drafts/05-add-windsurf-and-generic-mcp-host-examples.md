# Add Windsurf and generic MCP host examples

Labels: `enhancement`, `examples`, `mcp`, `good first issue`

## Summary

The repo currently documents Claude Desktop and Cursor, but the live Jungle Grid docs also position the MCP server for other MCP-aware hosts. Add at least one additional host example plus a generic reference.

## Scope

- Add a `windsurf/` example or expand the current MCP docs structure
- Add a generic `mcp-hosts/` reference example if that reads better
- Document the shared `npx -y @jungle-grid/mcp` server wiring
- Keep host-specific instructions short and concrete

## Acceptance criteria

- At least one additional host is documented beyond Claude Desktop and Cursor
- The config example uses `JUNGLE_GRID_API_KEY`
- The docs explain when `JUNGLE_GRID_API_URL` is needed for non-default environments
- The top-level `README.md` links to the new example

## Notes

This is a good starter task because most of the work is documentation and configuration structure.
