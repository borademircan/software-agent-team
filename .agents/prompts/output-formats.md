# Output Formats

Standard output formats for all agent deliverables. Agents should follow these
structures to ensure consistency across the team.

---

## Implementation Summary

```markdown
## Implementation Summary

### What Changed
- [file]: [description of change]

### How It Works
[Brief explanation of the approach]

### Tests
- [Test name]: [what it covers]

### Risks & Assumptions
- [Risk or assumption]

### Follow-up Tasks
- [Task description]
```

---

## Architecture Summary

```markdown
## Architecture Summary

### Overview
[High-level description]

### Components
| Component | Responsibility | Dependencies |
|-----------|---------------|--------------|
|           |               |              |

### Data Flow
[Description or diagram of data flow]

### API Boundaries
[API surface description]

### Tradeoffs
| Option | Pros | Cons |
|--------|------|------|
|        |      |      |

### Recommendation
[What to do and why]

### Risks
- [Risk description]
```

---

## Code Review Report

```markdown
## Code Review Report

### Status: PASS / FAIL

### Issues Found
| # | Issue | Severity | Category | Required Fix |
|---|-------|----------|----------|--------------|
| 1 |       |          |          | Yes / No     |

### Security Notes
- [Finding]

### Performance Notes
- [Finding]

### Accessibility Notes
- [Finding]

### Readiness Score: [1-5]
```

---

## Security Review Report

```markdown
## Security Review Report

### Status: PASS / FAIL

### Findings
| # | Finding | Severity | Category | Recommendation |
|---|---------|----------|----------|----------------|
| 1 |         |          |          |                |

### Authentication Review
- [Finding]

### Authorization Review
- [Finding]

### Input Validation Review
- [Finding]

### Dependency Review
- [Finding]

### Overall Risk Level: Low / Medium / High / Critical
```

---

## Deployment Plan

```markdown
## Deployment Plan

### Target Environment
[Production / Staging / Development]

### Pre-deployment Checks
- [ ] CI/CD pipeline passes
- [ ] Environment variables configured
- [ ] Database migrations ready

### Deployment Steps
1. [Step]
2. [Step]

### Rollback Plan
[How to revert if something goes wrong]

### Monitoring
[What to watch after deployment]

### Risks
- [Risk]
```

---

## Database Migration Summary

```markdown
## Database Migration Summary

### Schema Changes
| Table | Change | Type | Reversible |
|-------|--------|------|------------|
|       |        |      | Yes / No   |

### Migration SQL
[SQL statements]

### Rollback SQL
[Rollback statements]

### Data Impact
[Rows affected, data transformation notes]

### Risks
- [Risk]
```

---

## Transcription Summary

```markdown
## Transcription Summary

### Audio Source
[File path]

### Transcript File
[Output path]

### Summary
[2-3 sentence summary]

### Action Items
| # | Action | Owner | Deadline | Priority |
|---|--------|-------|----------|----------|
| 1 |        |       |          |          |

### Decisions
- [Decision]

### Open Questions
- [Question]

### Suggested Tickets
| # | Title | Type | Priority |
|---|-------|------|----------|
| 1 |       |      |          |
```

---

## GitHub Issue Draft

```markdown
## [Title]

### Description
[Clear description of the issue]

### Context
[Background and relevant information]

### Tasks
- [ ] [Task]

### Acceptance Criteria
- [ ] [Criterion]

### Labels
[bug, feature, enhancement, etc.]

### Priority
[Critical / High / Medium / Low]

### Dependencies
- [Dependency]
```

---

## Asana Task Draft

```markdown
## [Task Title]

### Description
[Clear description]

### Section
[Suggested Asana section/project]

### Priority
[Critical / High / Medium / Low]

### Subtasks
- [ ] [Subtask]

### Dependencies
- [Dependency]

### Acceptance Criteria
- [ ] [Criterion]
```
