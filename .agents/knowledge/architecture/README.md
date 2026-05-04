# Architecture Knowledge

This directory stores architecture documentation for the project.

## What Belongs Here

- System architecture overviews
- Service boundary diagrams
- Data flow documentation
- API architecture notes
- Infrastructure topology
- Technology stack decisions

## File Naming

Use descriptive names:

```
system-overview.md
api-architecture.md
data-flow.md
service-boundaries.md
```

## Example Entry

```markdown
# API Architecture

## Overview
The system uses a REST API with JSON responses.

## Services
- Auth Service: handles authentication and session management
- Core API: handles business logic and data access
- Worker Service: handles background jobs and queue processing

## Data Flow
Client → API Gateway → Core API → Database
Client → API Gateway → Auth Service → Session Store
```

## Guidelines

- Keep documentation up to date as architecture evolves.
- Reference decision records when architecture changes.
- Include diagrams where they add clarity.
- Note assumptions and constraints.
