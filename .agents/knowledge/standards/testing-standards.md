# Testing Standards

Project-wide testing standards. All testable code must follow these guidelines.

## Testing Pyramid

- **Unit tests** — test individual functions and methods in isolation.
- **Integration tests** — test how components work together.
- **End-to-end tests** — test complete user flows (use sparingly).

Aim for many unit tests, fewer integration tests, and minimal e2e tests.

## Unit Tests

- Test one behavior per test.
- Use descriptive test names that explain what is being tested.
- Test both happy paths and error paths.
- Test edge cases and boundary conditions.
- Keep tests independent — no shared mutable state.
- Avoid testing implementation details — test behavior.

## Integration Tests

- Test key interaction points between components.
- Test API endpoints with realistic request/response cycles.
- Test database operations with actual queries.
- Test external service integrations with mocks or sandboxes.

## Test Quality

- Tests must be deterministic — no flaky tests.
- Tests should run fast — slow tests discourage testing.
- Tests should be readable — a test is documentation.
- Tests should fail for the right reason — clear assertions.

## What to Test

- Core business logic — always.
- Input validation — always.
- Error handling — always.
- Security-sensitive logic — always.
- API contracts — always.
- Database queries — for complex queries.
- UI interactions — for key user flows.

## What Not to Test

- Trivial getters/setters with no logic.
- Framework internals.
- Third-party library behavior.
- Implementation details that may change.

## Test Coverage

- Aim for meaningful coverage, not 100% line coverage.
- Focus on critical paths and complex logic.
- Track coverage trends, not absolute numbers.
- Low coverage in critical areas is a red flag.

## Test Data

- Use realistic but non-sensitive test data.
- Do not use production data in tests.
- Use factories or fixtures for test data creation.
- Clean up test data after tests run.

## Continuous Integration

- All tests must pass before merging.
- Run tests automatically on every push and PR.
- Fix broken tests immediately — do not let them accumulate.
- Monitor test execution time and optimize slow tests.
