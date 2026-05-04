# Security Standards

Project-wide security standards. All code and infrastructure must follow
these guidelines.

## Data Protection

- Classify data by sensitivity (public, internal, confidential, restricted).
- Apply appropriate protections based on classification.
- Encrypt sensitive data at rest and in transit.
- Minimize data collection — only collect what is needed.
- Implement data retention and deletion policies.

## Authentication

- Use established authentication libraries and frameworks.
- Enforce strong password policies.
- Implement multi-factor authentication for sensitive operations.
- Use secure session management with proper expiration.
- Invalidate sessions on logout and password change.

## Authorization

- Enforce least privilege at every level.
- Validate permissions on the server side, not just the client.
- Use role-based or attribute-based access control.
- Audit access control rules regularly.

## Input & Output

- Validate all input at system boundaries.
- Sanitize output to prevent injection attacks.
- Use parameterized queries for database operations.
- Reject unexpected input types and formats early.

## Secrets

- Never store secrets in source code or version control.
- Use environment variables or dedicated secret managers.
- Rotate secrets regularly.
- Audit secret access.

## Dependencies

- Review new dependencies before adoption.
- Monitor for known vulnerabilities.
- Keep dependencies up to date.
- Remove unused dependencies.

## Logging & Monitoring

- Log security events (auth attempts, permission changes, errors).
- Never log sensitive data (passwords, tokens, PII).
- Monitor for anomalies and suspicious patterns.
- Set up alerts for security-relevant events.

## Incident Response

- Document the incident response process.
- Know who to contact for security incidents.
- Preserve evidence during investigation.
- Conduct post-incident reviews.
