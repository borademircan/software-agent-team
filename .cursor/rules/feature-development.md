# Feature Development Workflow

Build a new feature from request to delivery.

## Trigger

Provide a feature request or user story.

## Steps

### 1. Plan (@orchestrator)

- Analyze the request and determine scope.
- Identify which agents are needed.
- Create an execution plan with phases and dependencies.

### 2. Define Requirements (@planner)

- Convert the request into a feature brief.
- Write user stories with acceptance criteria.
- Create a task breakdown.
- Identify risks, dependencies, and open questions.

### 3. Design Architecture (@architect)

- Review the feature brief and define the technical approach.
- Design components, API boundaries, and data flow.
- Identify tradeoffs and write a decision record if needed.

### 4. Implement (@developer)

- Implement the feature following the architecture and coding standards.
- Connect frontend and backend.
- Prepare implementation summary with files changed.

### 5. Database Work (@database) — if needed

- Design schema changes and write migrations.
- Write rollback scripts.
- Review query performance.

### 6. AI/Integration Work (@ai) — if needed

- Design integration plan with API contracts.
- Implement retry logic and failure handling.

### 7. DevOps Work (@devops) — if needed

- Prepare deployment plan and environment configuration.
- Update CI/CD pipeline if required.

### 8. Review (@qa)

- Code review for correctness, security, performance, accessibility.
- Create test plan.
- Produce readiness score.
- List required fixes and suggested improvements.

### 9. Document (@docs)

- Update README, API docs, changelog.
- Store decision records and knowledge base entries.

### 10. Deliver (@orchestrator)

- Prepare final summary.
- List follow-up tasks.
- Confirm approval checkpoints are clear.

## Approval Checkpoints

- Human approval before database migrations.
- Human approval before production deployment.
- Human approval before security-sensitive changes.

## Reference

See `.agents/workflows_yaml/feature-development.yaml` for the machine-readable contract.
