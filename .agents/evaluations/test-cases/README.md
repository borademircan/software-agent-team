# Test Cases

This directory stores test case definitions for evaluating agent behavior.

## What Belongs Here

- Input/output test cases for agent workflows
- Edge case scenarios
- Regression test cases for known issues
- Benchmark inputs for consistency testing

## Format

Each test case file should include:

- **Input:** The input given to the agent
- **Expected Output:** What the agent should produce
- **Evaluation Criteria:** How to judge correctness
- **Agent(s) Under Test:** Which agents are involved

## Example

```markdown
# Test: Simple Feature Request

## Input
"Add a search bar to the customer dashboard."

## Expected Output
- Feature brief with user stories
- Acceptance criteria
- Task breakdown with at least 3 tasks

## Evaluation Criteria
- Requirements are clear and testable
- No invented details
- Dependencies identified

## Agents Under Test
- Product & Technical Planner
- Orchestrator
```
