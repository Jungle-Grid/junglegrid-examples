# Add training job examples to the repo

Labels: `enhancement`, `examples`, `help wanted`

## Summary

The repo currently includes runnable inference and batch job examples, but it does not yet include training examples. Add a small set of public-safe training templates that match the current Jungle Grid CLI flow.

## Scope

- Add a new `training-jobs/` directory
- Add a `README.md` with prerequisites and usage
- Add 2-3 runnable templates using public images
- Keep the examples workload-first and avoid hard-coding exact GPU models
- Update the top-level `README.md` to include the new area

## Acceptance criteria

- `training-jobs/README.md` exists and explains how to use the examples
- At least two runnable `npx @jungle-grid/cli@latest submit` examples are included
- Examples use public images and no secrets
- Docs align with the current CLI shape from `https://junglegrid.dev/docs/cli`

## Notes

Prefer examples that are small enough to understand quickly and safe to publish publicly.
