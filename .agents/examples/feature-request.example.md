# Example: Feature Request

## Original Request

> "Build a customer dashboard with subscription status, recent orders, and support tickets."

---

## Involved Agents

| # | Agent | Role in This Workflow |
|---|-------|-----------------------|
| 1 | Orchestrator | Receives request, creates execution plan, assigns agents |
| 2 | Product & Technical Planner | Converts request into feature brief, user stories, and tasks |
| 3 | Software Architect | Designs dashboard architecture, API structure, data flow |
| 4 | Fullstack Developer | Implements frontend dashboard and backend APIs |
| 5 | Database & Data | Designs queries for subscriptions, orders, and tickets |
| 6 | Quality, Testing & Security | Reviews implementation, creates test plan |
| 7 | Documentation & Knowledge | Updates project docs, writes changelog |

---

## Expected Workflow

```
User Request
  → Orchestrator (analyze, plan, assign)
  → Product & Technical Planner (feature brief, user stories, acceptance criteria)
  → Software Architect (dashboard architecture, API design, component structure)
  → Database & Data (query design for subscription, order, ticket data)
  → Fullstack Developer (implement dashboard UI + backend APIs)
  → Quality, Testing & Security (code review, security review, test plan)
  → Documentation & Knowledge (update docs, changelog)
  → Orchestrator (final summary, follow-up tasks)
```

---

## Sample Output Summary

### Feature Brief

**Title:** Customer Dashboard
**Goal:** Provide customers with a single view of their subscription status, recent orders, and support tickets.

### User Stories

1. As a customer, I want to see my current subscription status so I know if my subscription is active.
2. As a customer, I want to see my recent orders so I can track my purchase history.
3. As a customer, I want to see my open support tickets so I can follow up on issues.

### Acceptance Criteria

- [ ] Dashboard loads in under 2 seconds
- [ ] Subscription card shows plan name, status, next billing date, and price
- [ ] Recent orders section shows the last 10 orders with status and total
- [ ] Support tickets section shows open tickets with title, status, and last update
- [ ] Dashboard is responsive on mobile and desktop
- [ ] Empty states are handled gracefully

### Task Breakdown

| # | Task | Agent | Priority |
|---|------|-------|----------|
| 1 | Design dashboard API endpoints | Software Architect | High |
| 2 | Write subscription status query | Database & Data | High |
| 3 | Write recent orders query | Database & Data | High |
| 4 | Write support tickets query | Database & Data | Medium |
| 5 | Implement dashboard backend API | Fullstack Developer | High |
| 6 | Implement dashboard frontend UI | Fullstack Developer | High |
| 7 | Write unit tests for API | Fullstack Developer | Medium |
| 8 | Security review | Quality, Testing & Security | Medium |
| 9 | Update API documentation | Documentation & Knowledge | Low |

### Risks

- Subscription data may come from a third-party billing provider (API latency)
- Support ticket system may not have an API yet
- Dashboard performance depends on query efficiency
