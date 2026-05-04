# Project Context

This directory stores project-specific context that agents need to understand
the current state of the project.

## What Belongs Here

- Project overview and goals
- Current tech stack documentation
- Team structure and roles
- Sprint goals and roadmap
- Active constraints (budget, timeline, compliance)
- Integration landscape (third-party services in use)
- Known technical debt

## File Naming

Use descriptive names:

```
project-overview.md
tech-stack.md
active-integrations.md
known-technical-debt.md
current-sprint.md
```

## Example Entry

```markdown
# Project Overview

## Name
Customer Portal

## Description
A self-service web application where customers can manage their subscriptions,
view order history, and contact support.

## Tech Stack
- Frontend: Next.js, TypeScript
- Backend: FastAPI, Python
- Database: PostgreSQL
- Cache: Redis
- Hosting: AWS ECS

## Current Phase
MVP launched. Working on subscription management features.

## Key Constraints
- Must support EU data residency (GDPR)
- Maximum 2-second page load time
- Mobile-first design
```

## Guidelines

- Update this directory when the project context changes significantly.
- Keep entries factual and current.
- Agents should read project context before making architectural decisions.
- Remove outdated information to avoid confusion.
