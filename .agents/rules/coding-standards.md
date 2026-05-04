# Coding Standards

These rules apply when writing or reviewing code.

## Readability

- Write readable code. Use clear, descriptive names for variables, functions, and classes.
- Keep functions short and focused — one responsibility per function.
- Add comments only where intent is non-obvious. Do not comment obvious code.

## Error Handling

- Handle errors explicitly. Never silently swallow exceptions.
- Provide meaningful error messages with enough context to debug.
- Log errors with appropriate severity levels.

## Input Validation

- Validate all inputs at system boundaries.
- Sanitize user input before processing.
- Reject invalid input early.

## Security in Code

- Never hardcode secrets, API keys, or credentials.
- Use environment variables or secret managers.
- Use parameterized queries for all database operations.
- Sanitize outputs to prevent XSS in web applications.
- Follow the principle of least privilege.

## Testing

- Write testable code. Avoid tight coupling.
- Include unit tests for core logic.
- Tests must be deterministic — no flaky tests.

## Dependencies

- Avoid unnecessary dependencies. Pin versions in production.
- Review dependencies for known vulnerabilities.
- Remove unused dependencies.

## Change Management

- One logical change per commit or PR.
- Include a clear description of what changed and why.
- Do not mix refactoring with feature work.

## Reference

See `.agents/prompts/coding-standards.md` and `.agents/knowledge/standards/coding-standards.md` for extended guidelines.
