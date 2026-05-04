# Architecture Decision Skill

Evaluate a technical proposal and produce an Architecture Decision Record (ADR).

## Process

### 1. Define Context
- What problem or situation requires a decision?
- What are the constraints?
- What is the current state?

### 2. Identify Options
- List at least 2-3 viable options.
- For each option, document:
  - Description
  - Pros
  - Cons
  - Cost/complexity estimate

### 3. Analyze Tradeoffs
- Compare options across dimensions: simplicity, scalability, security, team familiarity, maintainability, cost.
- Use a comparison table.

### 4. Make Recommendation
- State the recommended option clearly.
- Explain why it was chosen over alternatives.
- Be honest about downsides.

### 5. Document Consequences
- What are the positive consequences?
- What are the negative consequences?
- What risks does this decision introduce?

## Output Format

Use the template at `.agents/templates/decision-record.md`.

Store completed records in `.agents/knowledge/decisions/` with numbered prefixes:
```
001-use-postgresql.md
002-adopt-fastapi.md
```

## Rules

- Always consider at least 2 options.
- Prefer simplicity unless complexity is justified.
- Include risks and mitigation strategies.
- Date-stamp every decision record.
- Link to related tasks when applicable.
