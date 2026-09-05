# AGENTS.md

## Project overview

Describe what this repository does.

## Development

Before making changes:

- Inspect the relevant existing code.
- Prefer small, focused changes.
- Do not rewrite working code unnecessarily.
- Use uv as python package manager

When want to run code:
- If on host machine - create venv
- If run docker container - use environment inside 


## Testing
After making changes:

- Run the relevant tests.
- Run linting/type checking where applicable.
- Report failures rather than hiding them.


## Code style

- Follow existing project conventions.
- Do not introduce a new framework/library unless necessary.
- Prefer simple solutions over clever ones.
- Write documentation only where neccessary - when function or class is complex
- Prefer Google-style Python docstrings

## Git

- Do not commit unless explicitly asked.
- Do not modify unrelated files.
- Do not discard existing user changes.

## Safety

- Do not run destructive commands without explicit confirmation.
- Never delete production data.
- Never expose secrets, tokens, passwords, or private keys.

## Communication

Before making substantial changes:
1. Explain what you intend to change.
2. Identify potentially risky operations.
3. Proceed when the task is sufficiently clear.

When finished:
1. Summarize what changed.
2. List tests/checks performed.
3. Mention anything that remains unresolved.