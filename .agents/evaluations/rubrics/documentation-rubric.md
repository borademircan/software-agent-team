# Documentation Rubric

## Scoring: 1–5

| Score | Level |
|-------|-------|
| 1 | Unacceptable |
| 2 | Below Standard |
| 3 | Acceptable |
| 4 | Good |
| 5 | Excellent |

**Minimum quality bar: 3 on all criteria.**

---

## Criteria

### Accuracy (Weight: Critical)

- **5 — Excellent:** Documentation exactly reflects the current state of the system. Code examples work. Configurations are correct.
- **3 — Acceptable:** Mostly accurate. Minor discrepancies.
- **1 — Unacceptable:** Documentation contradicts actual behavior. Outdated information misleads readers.

**Common failure signs:**
- API docs show parameters that don't exist
- Setup instructions that don't work
- Architecture diagrams that don't match the code
- References to removed features

### Completeness (Weight: High)

- **5 — Excellent:** All key topics covered. README, API docs, setup guide, architecture overview, and decision records present.
- **3 — Acceptable:** Core documentation present. Some gaps in non-critical areas.
- **1 — Unacceptable:** Missing critical documentation. No README or setup guide.

**Common failure signs:**
- No setup instructions
- Undocumented API endpoints
- Missing error code documentation
- No architecture overview

### Clarity (Weight: High)

- **5 — Excellent:** Clear, concise, well-organized. Easy to find information. Good use of headings, lists, and examples.
- **3 — Acceptable:** Understandable but could be better organized.
- **1 — Unacceptable:** Confusing, disorganized, or overly verbose.

**Common failure signs:**
- Wall-of-text without structure
- Jargon without explanation
- Missing examples for complex concepts
- Inconsistent formatting

### Maintainability (Weight: Medium)

- **5 — Excellent:** Documentation is easy to update. Modular structure. No duplication. Clear ownership.
- **3 — Acceptable:** Documentation can be maintained with some effort.
- **1 — Unacceptable:** Documentation is hard to maintain. Duplicated content. No clear structure.

**Common failure signs:**
- Same information in multiple places
- No clear file naming convention
- Mixed concerns in single documents
- No process for updating docs with code changes

### Usefulness (Weight: High)

- **5 — Excellent:** A new team member can onboard using documentation alone. Common tasks are documented with examples.
- **3 — Acceptable:** Helpful but a new team member still needs to ask questions.
- **1 — Unacceptable:** Documentation does not help anyone accomplish anything.

**Common failure signs:**
- Documentation exists but nobody reads it
- Auto-generated docs with no human curation
- Missing "how to" guides for common tasks
- No troubleshooting section
