# Security Standards

All agents must follow these security standards when producing or reviewing code.

## Secrets Management

- Never store secrets, API keys, tokens, or credentials in source code.
- Never commit secrets to version control.
- Use environment variables or dedicated secret managers.
- Rotate secrets regularly and after any suspected exposure.

## Input Validation

- Validate all inputs at system boundaries.
- Sanitize user-provided data before use.
- Reject unexpected input types and formats.
- Use allowlists over denylists where possible.

## Output Sanitization

- Sanitize output to prevent XSS in web applications.
- Escape user-provided data in HTML, SQL, and shell contexts.
- Use parameterized queries for all database operations.

## Authentication & Authorization

- Use established authentication libraries — do not build custom auth.
- Implement proper session management and expiration.
- Enforce the principle of least privilege.
- Separate authentication (who you are) from authorization (what you can do).
- Validate permissions on every request, not just at the UI level.

## Common Vulnerability Awareness

- **CSRF**: Use anti-CSRF tokens for state-changing requests.
- **XSS**: Escape and sanitize all user-rendered content.
- **SQL Injection**: Use parameterized queries exclusively.
- **SSRF**: Validate and restrict outbound request targets.
- **Path Traversal**: Validate file paths and use safe path resolution.

## Dependency Security

- Review dependencies for known vulnerabilities before adding them.
- Keep dependencies up to date.
- Use tools to scan for vulnerable dependencies automatically.
- Remove unused dependencies.

## Logging & Monitoring

- Log security-relevant events (login attempts, permission changes, errors).
- Do not log sensitive data (passwords, tokens, PII, full credit card numbers).
- Monitor for unusual patterns and anomalies.

## Token & API Key Handling

- Use short-lived tokens where possible.
- Store tokens securely (not in localStorage for web apps unless necessary).
- Validate token signatures and expiration on every use.
- Use HTTPS for all token transmission.

## Approval Requirements

- Human approval is required before changing auth, payment, privacy, or security-sensitive logic.
- Human approval is required before production security configuration changes.
- Security review is required before deploying changes that affect access control.
