# Add CI validation for example files and docs

Labels: `enhancement`, `ci`, `developer-experience`

## Summary

The repo now contains JSON config examples, shell scripts, and server-side code snippets, but there is no automated validation to catch broken examples or syntax regressions.

## Scope

- Add a GitHub Actions workflow for lightweight validation
- Validate JSON example files
- Run `node --check` on Node examples
- Run `python -m py_compile` on Python examples
- Optionally lint shell scripts with a lightweight check if practical

## Acceptance criteria

- A CI workflow runs on pull requests
- JSON, Node, and Python examples are checked automatically
- The workflow is fast and does not require private credentials
- Failing example syntax blocks broken changes from merging

## Notes

Keep the workflow simple and avoid depending on external services or live Jungle Grid credentials.
