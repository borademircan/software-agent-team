# Coding Standards

All code produced by agents must follow these standards.

## Readability

- Write readable code that a new developer can understand.
- Use clear, descriptive names for variables, functions, and classes.
- Keep functions small and focused on a single responsibility.
- Add comments only where the intent is non-obvious — do not comment obvious code.

## Error Handling

- Handle errors explicitly. Do not silently swallow exceptions.
- Provide meaningful error messages.
- Use appropriate error types and status codes.
- Log errors with enough context to debug.

## Input Validation

- Validate all inputs at system boundaries.
- Sanitize user input before processing.
- Use strong typing where the language supports it.
- Reject invalid input early.

## Logging

- Log useful context at appropriate levels (info, warn, error).
- Do not log sensitive data (passwords, tokens, PII).
- Include request IDs or correlation IDs where available.
- Log enough to debug, not so much that logs are noisy.

## Security

- Never hardcode secrets, API keys, or credentials in code.
- Use environment variables or secret managers for sensitive values.
- Follow the principle of least privilege.

## Testing

- Write testable code. Avoid tight coupling.
- Include unit tests for core logic.
- Include integration tests for key flows.
- Tests should be deterministic and not flaky.

## Compatibility

- Maintain backward compatibility unless a breaking change is intentional and documented.
- Use feature flags for gradual rollouts when appropriate.
- Keep database migrations reversible where possible.

## Dependencies

- Avoid unnecessary dependencies.
- Pin dependency versions.
- Review dependencies for known vulnerabilities.
- Prefer well-maintained, widely-used libraries.

## Change Discipline

- Keep changes minimal and focused.
- Do not refactor unrelated code in the same change.
- One logical change per commit or PR.
- Include a clear description of what changed and why.
