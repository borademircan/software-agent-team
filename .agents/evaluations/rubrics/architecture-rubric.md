# Architecture Rubric

## Scoring: 1–5

| Score | Level |
|-------|-------|
| 1 | Unacceptable |
| 2 | Below Standard |
| 3 | Acceptable |
| 4 | Good |
| 5 | Excellent |

**Minimum quality bar: 3 on all criteria. No criteria below 2.**

---

## Criteria

### Clarity (Weight: High)

- **5 — Excellent:** Architecture is clearly communicated. Components, boundaries, and data flow are easy to understand. Diagrams included where helpful.
- **3 — Acceptable:** Architecture is understandable but some areas are vague.
- **1 — Unacceptable:** Architecture is unclear, confusing, or contradictory.

**Common failure signs:**
- Missing component descriptions
- Unclear responsibilities between services
- No data flow documentation
- Jargon without definitions

### Practicality (Weight: High)

- **5 — Excellent:** Architecture is implementable with current team and resources. Complexity is justified. Simple solutions preferred where appropriate.
- **3 — Acceptable:** Mostly practical. Some areas may be over-engineered.
- **1 — Unacceptable:** Over-engineered, impractical, or impossible to implement with available resources.

**Common failure signs:**
- Microservices where a monolith would suffice
- Exotic technology choices without justification
- Missing consideration of team capabilities
- No phased implementation plan

### Scalability (Weight: Medium)

- **5 — Excellent:** Architecture handles growth gracefully. Bottlenecks identified. Scaling strategy defined.
- **3 — Acceptable:** Architecture works at current scale. Growth path exists but not detailed.
- **1 — Unacceptable:** Architecture will not scale. Single points of failure.

**Common failure signs:**
- Tight coupling between components
- Shared mutable state across services
- No caching strategy
- Synchronous calls for everything

### Security (Weight: Critical)

- **5 — Excellent:** Security is designed in from the start. Trust boundaries defined. Auth and access control clear.
- **3 — Acceptable:** Security considerations present but incomplete.
- **1 — Unacceptable:** Security not considered. Trust boundaries missing.

**Common failure signs:**
- No trust boundary definition
- Missing auth between services
- Sensitive data flowing through insecure channels
- No encryption at rest or in transit

### Tradeoff Analysis (Weight: High)

- **5 — Excellent:** Multiple options considered. Tradeoffs explicit. Decision justified with clear reasoning.
- **3 — Acceptable:** Some options considered. Reasoning present but brief.
- **1 — Unacceptable:** Single option presented with no alternatives or justification.

**Common failure signs:**
- "We should use X" with no alternatives
- Missing cost/benefit analysis
- No mention of risks or downsides
- Decision based on familiarity alone

### Decision Record Quality (Weight: Medium)

- **5 — Excellent:** Complete decision record with context, options, decision, consequences, and risks.
- **3 — Acceptable:** Decision record present but missing some sections.
- **1 — Unacceptable:** No decision record or decision not documented.

**Common failure signs:**
- Missing context section
- No consequences or risks documented
- Decision record written after the fact without real analysis
