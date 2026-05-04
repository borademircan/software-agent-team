# Review Rubric

Use this rubric to score work on a 1–5 scale across each dimension.

## Scoring Scale

| Score | Meaning |
|-------|---------|
| 1     | Unacceptable — Critical issues, not ready for use |
| 2     | Below Standard — Significant issues, major rework needed |
| 3     | Acceptable — Meets minimum requirements, minor issues |
| 4     | Good — Solid work, few minor improvements possible |
| 5     | Excellent — Exceeds expectations, production-ready |

**Minimum quality bar: 3 on all dimensions. No dimension below 2.**

---

## Dimensions

### 1. Requirements Coverage

- **5**: All acceptance criteria met, edge cases handled, out-of-scope documented.
- **3**: Core requirements met, some edge cases missing.
- **1**: Requirements are not addressed or misunderstood.

### 2. Correctness

- **5**: Logic is correct, error handling is thorough, no known bugs.
- **3**: Core logic works, minor edge case bugs possible.
- **1**: Logic errors, incorrect behavior, unhandled failures.

### 3. Maintainability

- **5**: Clean code, clear naming, small functions, well-structured.
- **3**: Readable but could be cleaner, some large functions.
- **1**: Hard to read, unclear names, tightly coupled, no structure.

### 4. Security

- **5**: No vulnerabilities, inputs validated, outputs sanitized, secrets handled correctly.
- **3**: Basic security in place, minor gaps.
- **1**: Obvious vulnerabilities, secrets exposed, no input validation.

### 5. Performance

- **5**: Efficient queries, no N+1, appropriate caching, optimized hot paths.
- **3**: Acceptable performance, minor optimization opportunities.
- **1**: Slow queries, blocking operations, obvious performance problems.

### 6. Accessibility

- **5**: Semantic HTML, ARIA labels, keyboard navigation, WCAG compliance.
- **3**: Basic accessibility, some gaps.
- **1**: No accessibility considerations, inaccessible UI.

### 7. Test Coverage

- **5**: Unit and integration tests, edge cases covered, deterministic tests.
- **3**: Core logic tested, some gaps in coverage.
- **1**: No tests, or tests that don't actually verify behavior.

### 8. Documentation

- **5**: Clear docs, updated README, API docs, decision records.
- **3**: Basic documentation present, some gaps.
- **1**: No documentation, outdated docs, misleading information.

### 9. Deployment Readiness

- **5**: Deployment plan, rollback plan, monitoring, env config complete.
- **3**: Can be deployed, minor gaps in rollback or monitoring.
- **1**: Not deployable, missing critical configuration or plans.

---

## Review Summary Template

```
## Review Summary

| Dimension              | Score | Notes |
|------------------------|-------|-------|
| Requirements Coverage  |       |       |
| Correctness            |       |       |
| Maintainability        |       |       |
| Security               |       |       |
| Performance            |       |       |
| Accessibility          |       |       |
| Test Coverage          |       |       |
| Documentation          |       |       |
| Deployment Readiness   |       |       |

**Overall Score:** [average]
**Status:** PASS / FAIL
**Blocking Issues:** [count]
```
