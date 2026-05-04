# Bug Fix Workflow

Investigate, fix, and verify a bug.

## Trigger

Provide a bug report or description of the issue.

## Steps

### 1. Triage (@orchestrator)

- Analyze the bug report.
- Assign priority.
- Determine which agents are needed.

### 2. Plan Fix (@planner)

- Define reproduction steps.
- Hypothesize root cause.
- Write fix plan with acceptance criteria.

### 3. Implement Fix (@developer)

- Investigate root cause.
- Implement the fix.
- Prepare implementation summary.

### 4. Review (@qa)

- Review the fix for correctness and regression risk.
- Run regression checks.
- Verify acceptance criteria are met.
- Produce readiness score.

### 5. Document (@docs)

- Document the root cause and fix.
- Update changelog.

## Approval Checkpoints

- Human approval if fix involves auth, payment, or security logic.
- Human approval before production deployment.

## Reference

See `.agents/workflows_yaml/bug-fix.yaml` for the machine-readable contract.
