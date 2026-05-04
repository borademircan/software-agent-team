# Code Review Skill

Perform a structured, multi-dimensional code review.

## Review Dimensions

Evaluate each dimension on a 1–5 scale:

### 1. Correctness
- Logic is correct
- Edge cases handled
- Error handling in place
- Input validation sufficient

### 2. Security
- No secrets in code
- Inputs validated and sanitized
- Parameterized queries used
- Auth/permissions correct
- Dependencies reviewed

### 3. Performance
- No unnecessary queries or N+1 patterns
- Appropriate caching
- No blocking operations in hot paths
- Large data sets paginated

### 4. Accessibility (if UI)
- Semantic HTML
- ARIA labels present
- Keyboard navigation works
- Color contrast meets WCAG

### 5. Test Coverage
- Unit tests for core logic
- Integration tests for key flows
- Edge cases covered
- Tests are deterministic

### 6. Documentation
- Inline comments for non-obvious logic
- API docs updated
- README updated if needed

## Output Format

```markdown
## Code Review Report

### Status: PASS / FAIL

| Dimension     | Score | Notes |
|---------------|-------|-------|
| Correctness   |       |       |
| Security      |       |       |
| Performance   |       |       |
| Accessibility |       |       |
| Tests         |       |       |
| Documentation |       |       |

### Issues Found
| # | Issue | Severity | Required Fix |
|---|-------|----------|--------------|
|   |       |          | Yes / No     |

### Readiness Score: [1-5]
```

## Reference

See `.agents/evaluations/rubrics/code-review-rubric.md` for scoring details.
See `.agents/prompts/review-rubric.md` for the full 9-dimension rubric.
