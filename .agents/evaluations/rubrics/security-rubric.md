# Security Rubric

## Scoring: 1–5

| Score | Level |
|-------|-------|
| 1 | Unacceptable |
| 2 | Below Standard |
| 3 | Acceptable |
| 4 | Good |
| 5 | Excellent |

**Minimum quality bar: 3 on all criteria. Security criteria below 3 block deployment.**

---

## Criteria

### Input Validation (Weight: Critical)

- **5 — Excellent:** All inputs validated at system boundaries. Types, ranges, and formats enforced. Reject-by-default approach.
- **3 — Acceptable:** Most inputs validated. Some gaps in edge cases.
- **1 — Unacceptable:** No input validation. User input used directly.

**Common failure signs:**
- User input passed directly to database queries
- No type checking on API parameters
- File uploads without type/size validation
- Missing boundary checks on numeric inputs

### Authentication & Authorization (Weight: Critical)

- **5 — Excellent:** Strong auth with proper session management. Permissions enforced server-side on every request. Least privilege applied.
- **3 — Acceptable:** Auth in place. Minor gaps in permission checks.
- **1 — Unacceptable:** Missing auth checks. Client-side-only permission enforcement.

**Common failure signs:**
- Endpoints without auth middleware
- Permission checks only in the UI
- Session tokens that never expire
- No rate limiting on auth endpoints

### Injection Prevention (Weight: Critical)

- **5 — Excellent:** Parameterized queries everywhere. Output properly escaped. No string concatenation in queries or commands.
- **3 — Acceptable:** Mostly parameterized. Occasional string construction.
- **1 — Unacceptable:** SQL injection, XSS, or command injection vulnerabilities present.

**Common failure signs:**
- String interpolation in SQL queries
- User content rendered without escaping
- Shell commands built from user input
- Template injection vulnerabilities

### Secret Management (Weight: Critical)

- **5 — Excellent:** No secrets in code. Environment variables or secret manager used. Rotation policy in place.
- **3 — Acceptable:** Secrets not in code. Basic env var usage.
- **1 — Unacceptable:** Secrets hardcoded in source. Credentials in version control.

**Common failure signs:**
- API keys in source files
- Passwords in configuration files committed to git
- Secrets logged in application output
- No secret rotation

### Dependency Security (Weight: High)

- **5 — Excellent:** Dependencies reviewed. No known vulnerabilities. Automated scanning in place.
- **3 — Acceptable:** Dependencies mostly up to date. No critical vulnerabilities.
- **1 — Unacceptable:** Known vulnerable dependencies. No review process.

**Common failure signs:**
- Outdated dependencies with known CVEs
- No dependency scanning in CI
- Unused dependencies still installed
- No lock file

### Data Protection (Weight: High)

- **5 — Excellent:** Sensitive data encrypted at rest and in transit. Minimal data collection. Proper retention policies.
- **3 — Acceptable:** HTTPS used. Basic encryption in place.
- **1 — Unacceptable:** Sensitive data transmitted or stored in plain text.

**Common failure signs:**
- HTTP used for sensitive data
- PII stored without encryption
- No data retention or deletion policy
- Excessive data collection
