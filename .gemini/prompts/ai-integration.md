# AI Integration Workflow

Design and implement an AI/LLM integration or automation.

## Trigger

Provide an integration request describing what needs to connect, automate, or be AI-powered.

## Steps

### 1. Scope (@orchestrator)

- Determine integration scope and assign agents.

### 2. Define Requirements (@planner)

- Define integration goal, requirements, and acceptance criteria.

### 3. Design Integration (@ai)

- Design API contracts and workflow steps.
- Define tool calling, retry logic, and idempotency.
- Identify failure modes and human approval points.
- Document security considerations.

### 4. Architecture Review (@architect) — if system-wide impact

- Review architectural implications.

### 5. Implement (@developer)

- Implement the integration following the design.

### 6. Review (@qa)

- Review for security, correctness, and test coverage.

### 7. Document (@docs)

- Document the integration, API contracts, and configuration.

## Approval Required

- External API actions that modify real data.
- Production automation deployment.
- Changes to authentication flows.

## Reference

See `.agents/workflows_yaml/ai-integration.yaml` for the machine-readable contract.
