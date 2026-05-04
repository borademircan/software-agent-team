# Database Change Workflow

Safely modify database schemas, run migrations, or perform data operations.

## Trigger

Provide a schema change request, data migration, or analytics query need.

## Steps

### 1. Scope (@orchestrator)

- Determine scope and assign agents.

### 2. Design Schema Change (@database)

- Write schema proposal.
- Write migration SQL with rollback scripts.
- Identify migration risks and data validation rules.
- Recommend indexes.

### 3. Architecture Review (@architect) — if architectural impact

- Review implications on system architecture.

### 4. Implement (@developer)

- Update application code for new schema.

### 5. Review (@qa)

- Review migration safety, data integrity, and security.

### 6. Deployment Plan (@devops) — if deployment needed

- Plan migration deployment and rollback.

### 7. Human Approval ⚠️

**Stop and wait for human approval before executing migration.**

Present:
- Schema proposal
- Migration SQL
- Rollback SQL
- Migration risks

### 8. Document (@docs)

- Document schema changes and migration.

## Reference

See `.agents/workflows_yaml/database-change.yaml` for the machine-readable contract.
