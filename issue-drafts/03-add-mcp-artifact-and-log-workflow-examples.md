# Add MCP examples for logs, artifacts, and long-running jobs

Labels: `enhancement`, `examples`, `mcp`

## Summary

The repo has MCP config examples, but it does not yet show realistic agent workflows using `submit_job`, `stream_job_logs`, `list_job_artifacts`, and artifact download helpers.

## Scope

- Add prompt or docs examples for the full MCP job loop
- Show a job that writes output to `/workspace/artifacts`
- Show how an agent should monitor a long-running job
- Keep the examples host-agnostic where possible

## Acceptance criteria

- A developer can see the end-to-end MCP workflow in one place
- At least one example covers artifact generation and retrieval
- At least one example covers live log streaming or polling
- The docs mention the current MCP tool names from `https://junglegrid.dev/docs/mcp`

## Notes

This should complement the existing Claude Desktop and Cursor setup docs rather than duplicate them.
