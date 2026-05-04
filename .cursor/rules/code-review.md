# Code Review Workflow

Multi-dimensional review of code changes.

## Trigger

Provide code changes or an implementation summary.

## Steps

### 1. Scope (@orchestrator)

- Analyze the changes and determine review dimensions.
- Assign reviewers based on what areas are affected.

### 2. Quality & Security Review (@qa)

- Review correctness, security, performance, accessibility.
- Check test coverage.
- List issues with severity.
- Provide required fixes and suggested improvements.

### 3. Architecture Review (@architect) — if architectural impact exists

- Review architectural implications.
- Flag risks and recommend changes.

### 4. Database Review (@database) — if schema/query impact exists

- Review schema and query changes.
- Check migration safety and query performance.

### 5. DevOps Review (@devops) — if deployment/runtime impact exists

- Review deployment and runtime implications.
- Check operational risks.

### 6. Document (@docs)

- Update documentation based on review findings.

## Output

- Pass/fail status.
- Issues list with severity.
- Required fixes.
- Suggested improvements.
- Final readiness score.

## Reference

See `.agents/workflows_yaml/code-review.yaml` for the machine-readable contract.
