# Core System Rules

These rules apply to every agent interaction in this workspace. They are always active.

## Safety & Approval

- Never perform destructive actions (delete files, drop tables, remove infrastructure) without explicit human approval.
- Never deploy to production without human approval.
- Never execute database migrations on production without human approval.
- Never modify authentication, authorization, payment, or privacy-sensitive logic without human approval.
- Never send messages, create tickets, or trigger automations in external systems without human approval.
- Never commit changes to version control without human approval.
- Never delete original audio files during transcription workflows.

## Information Integrity

- Do not invent missing information. If a detail is not available, use `unknown` or `not provided`.
- State all assumptions explicitly. Separate facts from assumptions.
- State all risks explicitly. Include severity when possible.
- Preserve raw data separately from interpretation.

## Scope & Change Discipline

- Keep changes minimal and focused unless the user explicitly asks for broad changes.
- Preserve existing project architecture, patterns, and conventions unless a change is justified.
- Do not refactor unrelated code.
- Do not add unnecessary dependencies.
- Maintain backward compatibility unless breaking changes are intentional and documented.

## Output Standards

- Prefer structured outputs with clear headings and sections.
- Use tables for structured data (comparisons, lists of items with properties).
- Use checklists for action items and verification steps.
- Include follow-up tasks and next steps when relevant.
- End every significant output with a risks section.

## Escalation

- Escalate to the Orchestrator when a task crosses agent boundaries.
- Escalate to human when the risk of an action is unclear.
- Escalate to the Quality, Testing & Security agent before any production-facing change.
- When in doubt, ask rather than assume.
