# Example: Pull Request

## Summary

Add subscription status card to the customer dashboard. Displays the customer's
current plan, subscription status, next billing date, and monthly price.

## Changes

- **`components/SubscriptionCard.tsx`** — New component that renders subscription
  status with plan name, status badge, billing date, and price.
- **`pages/Dashboard.tsx`** — Added SubscriptionCard to the dashboard layout.
- **`api/subscriptions.ts`** — New API client function to fetch subscription status.
- **`server/routes/subscriptions.py`** — New `/api/subscriptions/status` endpoint
  that returns the authenticated user's subscription details.
- **`server/queries/subscriptions.py`** — SQL query to fetch subscription by
  customer ID with plan details.
- **`tests/test_subscriptions_api.py`** — Unit tests for the subscription status
  endpoint.
- **`tests/SubscriptionCard.test.tsx`** — Component tests for rendering states
  (active, cancelled, past due, no subscription).

## Related Tasks

- Feature: Customer Dashboard (TASK-142)
- Design: Dashboard wireframes (TASK-138)

## Screenshots

*Subscription card showing active status with plan details and next billing date.*

## Testing

- [x] Unit tests for API endpoint (happy path + error cases)
- [x] Component tests for all subscription states
- [x] Manual testing with active, cancelled, and past-due subscriptions
- [x] Manual testing with no subscription (empty state)
- [x] Responsive layout verified on mobile and desktop

## Risks

- **Billing provider latency:** The subscription data comes from Stripe.
  If the Stripe API is slow, the dashboard load time increases. Mitigation:
  added a 5-second timeout and graceful fallback.
- **Stale data:** Subscription status is fetched on page load and not
  real-time. Customers may see a brief delay after status changes.

## Rollback Plan

1. Revert this PR.
2. No database migrations — rollback is clean.
3. No environment variable changes needed.

## Checklist

- [x] Code follows project coding standards
- [x] Tests are included and passing
- [x] Documentation is updated (API docs for new endpoint)
- [x] No secrets or credentials in code
- [x] No breaking API changes
- [x] No database migrations
- [x] Reviewed for security implications (auth check on endpoint)
- [x] Accessibility verified (status badge has aria-label, keyboard accessible)
