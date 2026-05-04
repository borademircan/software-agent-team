# Architecture Review Workflow

Evaluate a technical idea or proposal and produce a decision record.

## Trigger

Provide a technical idea, proposal, or question.

## Steps

### 1. Clarify Context (@planner)

- Define the technical context and requirements.
- List constraints and open questions.

### 2. Evaluate Architecture (@architect)

- Consider multiple options.
- Analyze tradeoffs for each option.
- Produce a recommendation with clear reasoning.
- Draft a decision record.

### 3. Database Impact (@database) — if data model impact exists

- Review data model implications.
- Assess migration risks.

### 4. Infrastructure Impact (@devops) — if infrastructure impact exists

- Review infrastructure implications.
- Assess deployment and operational risks.

### 5. Quality Review (@qa)

- Review security, performance, and quality implications.

### 6. Document Decision (@docs)

- Finalize the architecture decision record.
- Store in `.agents/knowledge/decisions/`.

## Output

- Architecture summary.
- Options considered with tradeoffs.
- Recommendation.
- Decision record.

## Reference

See `.agents/workflows_yaml/architecture-review.yaml` for the machine-readable contract.
