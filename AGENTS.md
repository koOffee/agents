# AGENTS.md

## Project overview

Describe what this repository does.

## Development

Before making changes:

- Inspect the relevant existing code.
- Prefer small, focused changes.
- Do not rewrite working code unnecessarily.
- Use `uv` as the Python package manager.

When running Python code:

- On the host machine, use the project's `uv`-managed environment or create a virtual environment.
- In a Docker container, use the environment provided inside the container.
- Do not install dependencies globally.


## Testing
After making changes:

- Run the relevant tests.
- Run `ruff format --check .`.
- Run `ruff check .`.
- Run `pyright` when the project uses Pyright.
- Run the relevant tests with `pytest`.
- Report failures rather than hiding them.


## Code style

- Follow existing project conventions.
- Do not introduce a new framework/library unless necessary.
- Prefer simple solutions over clever ones.
- Write documentation when a function, class, module, or non-obvious decision needs explanation.
- Prefer Google-style Python docstrings.
- Use Ruff as the source of truth for Python formatting, linting, and import sorting.
- Keep formatting consistent with the project's `pyproject.toml`; do not add competing formatters.

## Python typing

- Add type hints to all public functions, methods, and module-level APIs.
- Use explicit optional types such as `str | None`.
- Prefer built-in generics such as `list[str]`, `dict[str, int]`, and `tuple[int, ...]`.
- Prefer `collections.abc` types for parameters, such as `Sequence[str]`, `Mapping[str, object]`, and `Iterable[Path]`.
- Prefer precise return types and avoid `Any` when a more useful type is possible.
- Use `dataclass`, `TypedDict`, `Protocol`, or a small class for data with a stable shape instead of unstructured dictionaries.
- Do not add `# type: ignore` without a nearby comment explaining the reason.

## Python implementation conventions

- Prefer `pathlib.Path` over `os.path`.
- Use exceptions for exceptional conditions; do not return magic values.
- Do not add `print()` calls to library or application code; use the project's logger.
- Keep functions focused and make side effects explicit.
- Match the existing project architecture before introducing new abstractions.

## Required checks

Before considering Python work complete:

1. Run `ruff format --check .`.
2. Run `ruff check .`.
3. Run `pyright` when configured for the project.
4. Run targeted tests, then the full test suite when practical.
5. Report which checks were run and any failures.

Do not weaken linting or type-checking configuration merely to make a check pass. Fix the underlying issue whenever reasonably possible.

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
