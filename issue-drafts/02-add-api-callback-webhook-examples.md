# Add API callback and webhook receiver examples

Labels: `enhancement`, `examples`, `api`

## Summary

The API examples currently cover server-side job submission and estimation, but they do not yet show the callback flow documented in the Jungle Grid API docs. Add examples for job callbacks and webhook handling.

## Scope

- Add one Node.js example that submits a job with `callback_url`
- Add one Python example that receives webhook callbacks
- Document required headers and auth token handling
- Explain local development expectations clearly

## Acceptance criteria

- The repo includes a callback submission example
- The repo includes a webhook receiver example
- The docs explain how `callback_auth_token` is validated
- All examples remain public-safe and use placeholder URLs/tokens

## Notes

Use the current API docs as source of truth: `https://junglegrid.dev/docs/api`.
