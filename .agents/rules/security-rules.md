# Security Rules

These rules apply when writing, reviewing, or deploying code that touches security-sensitive areas.

## Secrets

- Never store secrets in source code or version control.
- Never log passwords, tokens, API keys, or PII.
- Use environment variables or dedicated secret managers.

## Authentication & Authorization

- Use established auth libraries. Do not build custom authentication.
- Validate permissions server-side on every request.
- Enforce least privilege at every level.
- Use CSRF protection for state-changing requests.

## Input & Output

- Validate all inputs at system boundaries.
- Use parameterized queries exclusively. Never build SQL with string concatenation.
- Escape user-provided data in HTML rendering to prevent XSS.
- Validate and restrict outbound request targets to prevent SSRF.

## Dependencies

- Review new dependencies for known vulnerabilities before adoption.
- Keep dependencies updated. Remove unused ones.

## Deployment

- Human approval required before production security configuration changes.
- Human approval required before changing auth, payment, or privacy logic.
- Security review required before deploying access control changes.

## Reference

See `.agents/prompts/security-standards.md` and `.agents/knowledge/standards/security-standards.md` for extended guidelines.
