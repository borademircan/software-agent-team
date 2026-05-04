# Review Checklist

Use this checklist when reviewing any code change, feature, or deployment.

## Correctness

- [ ] Code implements the stated requirements
- [ ] Edge cases are handled
- [ ] Error handling is in place
- [ ] Input validation is sufficient
- [ ] Output matches expected format

## Requirements Coverage

- [ ] All acceptance criteria are addressed
- [ ] No requirements are missing or skipped
- [ ] Out-of-scope items are documented

## Security

- [ ] No secrets or credentials in code
- [ ] Input is validated and sanitized
- [ ] Output is sanitized where needed
- [ ] Authentication and authorization are correct
- [ ] CSRF / XSS / SQL injection protections are in place
- [ ] Dependencies are reviewed for known vulnerabilities
- [ ] Logging does not leak sensitive data

## Performance

- [ ] No unnecessary database queries
- [ ] No N+1 query patterns
- [ ] Caching is used where appropriate
- [ ] Large data sets are paginated
- [ ] No blocking operations in hot paths

## Accessibility

- [ ] Semantic HTML is used
- [ ] ARIA labels are present where needed
- [ ] Keyboard navigation works
- [ ] Color contrast meets WCAG guidelines
- [ ] Screen reader compatibility verified

## Compatibility

- [ ] Backward compatibility is maintained
- [ ] API contracts are not broken
- [ ] Database migrations are reversible where possible
- [ ] No breaking changes without documentation

## Tests

- [ ] Unit tests cover core logic
- [ ] Integration tests cover key flows
- [ ] Edge cases have test coverage
- [ ] Tests pass locally
- [ ] No flaky tests introduced

## Documentation

- [ ] README is updated if needed
- [ ] API documentation is updated if needed
- [ ] Inline comments explain non-obvious logic
- [ ] Changelog is updated

## Deployment Risk

- [ ] Deployment plan is defined
- [ ] Rollback plan is documented
- [ ] Environment variables are configured
- [ ] Monitoring is in place
- [ ] No hardcoded environment-specific values
