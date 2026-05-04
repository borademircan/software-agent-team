# Code Review Rubric

## Scoring: 1–5

| Score | Level |
|-------|-------|
| 1 | Unacceptable |
| 2 | Below Standard |
| 3 | Acceptable |
| 4 | Good |
| 5 | Excellent |

**Minimum quality bar: 3 on all criteria. No criteria below 2.**

---

## Criteria

### Correctness (Weight: High)

- **5 — Excellent:** Logic is correct, all edge cases handled, error handling is thorough. No bugs.
- **3 — Acceptable:** Core logic works. Minor edge cases may be unhandled.
- **1 — Unacceptable:** Logic errors, incorrect behavior, or crashes.

**Common failure signs:**
- Unhandled null/undefined values
- Off-by-one errors
- Race conditions in async code
- Missing error handling

### Code Quality (Weight: High)

- **5 — Excellent:** Clean, readable, well-structured. Clear naming. Small functions.
- **3 — Acceptable:** Readable but some improvements possible. Minor style issues.
- **1 — Unacceptable:** Hard to read, unclear names, large functions, no structure.

**Common failure signs:**
- Functions over 50 lines
- Deeply nested conditionals
- Magic numbers or strings
- Copy-pasted code

### Security (Weight: Critical)

- **5 — Excellent:** Inputs validated, outputs sanitized, no secrets in code, auth correct.
- **3 — Acceptable:** Basic security in place. Minor gaps in validation.
- **1 — Unacceptable:** Vulnerabilities present. Secrets exposed. No input validation.

**Common failure signs:**
- SQL built with string concatenation
- User input rendered without escaping
- Hardcoded API keys or passwords
- Missing auth checks on endpoints

### Test Coverage (Weight: Medium)

- **5 — Excellent:** Unit and integration tests cover core logic, edge cases, and error paths.
- **3 — Acceptable:** Core happy path tested. Some gaps.
- **1 — Unacceptable:** No tests, or tests that don't verify real behavior.

**Common failure signs:**
- Tests that always pass regardless of implementation
- No tests for error paths
- Flaky tests
- Tests that depend on external services

### Performance (Weight: Medium)

- **5 — Excellent:** Efficient queries, no N+1, appropriate caching.
- **3 — Acceptable:** Acceptable performance. Minor optimization opportunities.
- **1 — Unacceptable:** Slow queries, blocking operations, memory leaks.

**Common failure signs:**
- N+1 database queries
- Loading all records when only a few are needed
- Synchronous blocking in async contexts
- Missing pagination

### Documentation (Weight: Low-Medium)

- **5 — Excellent:** Clear inline comments for non-obvious logic. Updated docs.
- **3 — Acceptable:** Basic documentation present.
- **1 — Unacceptable:** No documentation. Misleading comments.

**Common failure signs:**
- Outdated comments that contradict the code
- No API documentation for new endpoints
- Missing README updates for new features
