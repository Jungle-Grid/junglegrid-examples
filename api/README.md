# API Examples

Server-side examples for calling the Jungle Grid REST API.

## Important

- Keep `JUNGLE_GRID_API_KEY` on the server.
- Default API base URL: `https://api.junglegrid.dev`
- Use `/v1/jobs/estimate` before `/v1/jobs` when you want a preview for cost or capacity.

## Examples

- [node-express/server.mjs](/home/invinc/code/junglegrid-examples/api/node-express/server.mjs) — minimal Express proxy for job estimates and submissions
- [python-fastapi/main.py](/home/invinc/code/junglegrid-examples/api/python-fastapi/main.py) — minimal FastAPI proxy for job estimates and submissions

These examples intentionally forward a narrow request shape instead of acting as a blind proxy.
