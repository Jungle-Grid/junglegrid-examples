# Add provider-node examples and operator docs

Labels: `enhancement`, `documentation`, `examples`

## Summary

The public docs cover provider-node flows and managed capacity concepts, but this repo is still heavily user-path focused. Add examples for provider operators who want to register nodes or understand the provider-side setup.

## Scope

- Add a provider-focused docs area
- Include example commands for registration and daemon start
- Document prerequisites like reachable dispatch URL and `nvidia-smi`
- Keep the examples safe and avoid private infrastructure details

## Acceptance criteria

- Provider-node onboarding has a dedicated repo section
- Commands and terminology align with `https://junglegrid.dev/docs`
- The docs clearly separate user-path and provider-path guidance
- No sensitive infra details are hard-coded

## Notes

This should reflect the current public product docs, not internal ops runbooks.
