# Deployment Workflow

Deploy a release candidate to production with safety checks and approval.

## Trigger

Provide a release candidate or deployment request.

## Steps

### 1. Plan Deployment (@devops)

- Create deployment plan with environment checks.
- Verify CI/CD pipeline status.
- Write rollback plan.
- Define monitoring plan.
- List operational risks.

### 2. Pre-Deployment Review (@qa)

- Final quality and security check.
- Verify all blocking issues are resolved.
- Produce readiness score.

### 3. Prepare Documentation (@docs)

- Write deployment notes and changelog.
- Update runbooks.

### 4. Human Approval ⚠️

**Stop and wait for human approval before proceeding.**

Present to the human:
- Deployment plan
- Rollback plan
- Readiness score
- Any blocking issues

### 5. Execute Deployment (@devops)

- Execute the deployment.
- Run post-deployment checks.
- Verify monitoring.

### 6. Post-Deployment (@docs)

- Record deployment status.
- List follow-up tasks.

## Reference

See `.agents/workflows_yaml/deployment.yaml` for the machine-readable contract.
