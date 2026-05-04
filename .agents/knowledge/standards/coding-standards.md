# Coding Standards

Project-wide coding standards. All code must follow these guidelines.

## General Principles

- **Readability first.** Code is read far more often than it is written.
- **Simplicity over cleverness.** Prefer straightforward solutions.
- **Consistency.** Follow existing patterns in the codebase.
- **Small changes.** Make minimal, focused changes.

## Naming

- Use descriptive names that reveal intent.
- Use `camelCase` for variables and functions (JavaScript/TypeScript).
- Use `snake_case` for variables and functions (Python).
- Use `PascalCase` for classes and components.
- Use `UPPER_SNAKE_CASE` for constants.
- Avoid abbreviations unless they are widely understood.

## Functions

- Keep functions short — aim for under 30 lines.
- Each function should do one thing.
- Limit function parameters — prefer objects for 3+ parameters.
- Avoid side effects where possible.

## Error Handling

- Handle errors explicitly at every layer.
- Provide meaningful error messages with context.
- Use appropriate HTTP status codes for APIs.
- Log errors with enough detail to debug.
- Never silently swallow exceptions.

## Comments

- Write comments that explain *why*, not *what*.
- Do not comment obvious code.
- Keep comments up to date — outdated comments are worse than none.
- Use TODO comments sparingly and include context.

## File Organization

- One module or component per file.
- Group related files in directories.
- Keep import statements organized and minimal.
- Remove unused imports and variables.

## Dependencies

- Avoid adding unnecessary dependencies.
- Pin versions in production.
- Review security advisories for dependencies.
- Prefer well-maintained, widely-used libraries.
