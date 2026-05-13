# Contributing to Junglegrid Examples

This repository is for public, copy-pasteable examples that help developers use Jungle Grid safely and correctly.

## Help and discussion

- Help email: `run@junglegrid.dev`
- Discord: <https://discord.gg/kpJqxXFFCs>

Use the help email for repo or product support that should not live in a public thread. Use Discord for contribution questions, example ideas, and community discussion.

## What to contribute

Good contributions include:

- CLI job templates for inference, batch, or training workflows
- MCP configuration examples for AI hosts
- Server-side API integration examples
- Prompt templates that generate valid Jungle Grid requests
- Documentation improvements that reflect the current product docs

## Requirements for new examples

Every new example should be:

- Runnable or very close to runnable with minimal edits
- Based on current public Jungle Grid docs and command shapes
- Safe to publish in an open-source repository
- Clear about prerequisites, environment variables, and expected output

## Public-safety rules

- Never commit real API keys, tokens, passwords, or private endpoints.
- Use placeholders such as `jg_...` for API keys.
- Prefer public container images in examples.
- Keep `JUNGLE_GRID_API_KEY` on the server side only for REST integrations.
- If an example uses a private image or private registry in real life, convert it into a documented placeholder pattern before opening a pull request.

## How to structure an example

Include enough context that another developer can use it without reading the implementation twice:

- What the example does
- What prerequisites it has
- What environment variables it needs
- The command or config file to run
- What success looks like

If you add a new folder, also update the top-level `README.md`.

## Validation before opening a pull request

- Check links and package names against <https://junglegrid.dev/docs>.
- Make sure JSON examples parse cleanly.
- Make sure shell commands are copy-pasteable.
- Remove placeholder text like `YOUR EMAIL HERE`.
- Confirm the example does not leak private infrastructure details.

## Pull requests

1. Fork the repository and create a branch from `main`.
2. Add or update the example.
3. Document prerequisites and usage.
4. Verify the example is public-safe.
5. Open a pull request with a clear summary of what changed and why.

If you are unsure whether an example belongs here before opening a PR, ask in Discord or email `run@junglegrid.dev`.

## Code of Conduct

This project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating, you agree to abide by its terms.
