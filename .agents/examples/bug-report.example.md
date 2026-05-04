# Example: Bug Report

## Bug Report

**Title:** Customer cannot see subscription status — dashboard shows blank state

**Environment:** Production

**Steps to Reproduce:**
1. Log in as a customer with an active subscription.
2. Navigate to the customer dashboard.
3. Observe the subscription status card.

**Expected Result:**
Subscription status card shows plan name, status (active), next billing date, and price.

**Actual Result:**
Subscription status card shows "No active subscription" even though the customer has an active subscription. The API returns an empty subscription object `{}`.

**Severity:** High

**Suspected Cause:**
The `/api/subscriptions/status` endpoint may not be querying the correct table or may be filtering by an incorrect customer ID field.

---

## Involved Agents

| # | Agent | Role |
|---|-------|------|
| 1 | Orchestrator | Triages the bug, assigns agents |
| 2 | Product & Technical Planner | Analyzes bug, defines fix scope and acceptance criteria |
| 3 | Fullstack Developer | Investigates root cause, implements fix |
| 4 | Quality, Testing & Security | Reviews fix, runs regression tests |
| 5 | Documentation & Knowledge | Documents the fix and root cause |

---

## Expected Workflow

```
Bug Report
  → Orchestrator (triage, assign priority: High)
  → Product & Technical Planner (reproduction plan, fix scope)
  → Fullstack Developer (investigate API, fix query, test)
  → Quality, Testing & Security (review fix, regression test)
  → Documentation & Knowledge (document root cause, update changelog)
```

---

## Sample Fix Plan

### Root Cause Hypothesis

The `/api/subscriptions/status` endpoint filters subscriptions by `user.id` but the subscriptions table uses `customer_id` which maps to a different field in the billing provider.

### Fix Plan

1. Verify the mapping between `user.id` and `customer_id` in the subscriptions table.
2. Update the query to use the correct identifier.
3. Add a test case for this scenario.
4. Verify the fix with a customer who has an active subscription.

### Acceptance Criteria

- [ ] `/api/subscriptions/status` returns the correct subscription for authenticated users
- [ ] Subscription card displays plan name, status, next billing date, and price
- [ ] Empty state is only shown when no subscription genuinely exists
- [ ] Regression test covers this scenario
- [ ] Fix does not break other subscription-related features
