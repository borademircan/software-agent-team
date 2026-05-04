# Decision Records

This directory stores architecture and technical decision records (ADRs).

## What Belongs Here

- Technology choices and why they were made
- Architecture decisions with tradeoff analysis
- Decisions to deprecate or replace systems
- Important technical compromises and their reasoning

## File Naming

Use a numbered prefix and descriptive name:

```
001-use-postgresql-for-primary-database.md
002-adopt-rest-api-over-graphql.md
003-use-redis-for-session-storage.md
```

## Template

Use the decision record template at `templates/decision-record.md`.

## Example Entry

```markdown
# 001: Use PostgreSQL for Primary Database

## Status
Accepted

## Context
We need a relational database for our application. The team has experience
with PostgreSQL and MySQL.

## Options Considered
1. PostgreSQL — strong JSON support, extensibility, community
2. MySQL — familiar, widely deployed, good tooling

## Decision
Use PostgreSQL for its JSON support and extensibility.

## Consequences
- Team needs to learn PostgreSQL-specific features
- Better support for complex queries and JSON data

## Risks
- Smaller hosting provider support compared to MySQL

## Date
2025-01-15
```

## Guidelines

- Write a decision record for every significant technical choice.
- Include context so future readers understand *why*, not just *what*.
- Update status when decisions are superseded or deprecated.
- Link to related tasks or PRs.
