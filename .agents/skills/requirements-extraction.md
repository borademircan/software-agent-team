# Requirements Extraction Skill

Extract structured development artifacts from text (transcripts, notes, conversations).

## Supported Modes

### meeting_notes
Extract: summary, participants, action items, decisions, open questions, risks, follow-ups.

### bug_report
Extract: title, environment, steps to reproduce, expected result, actual result, severity, suspected cause, suggested fix, acceptance criteria. Use `unknown` for missing fields.

### feature_requirements
Extract: overview, problem, goal, users, user stories, functional requirements, non-functional requirements, acceptance criteria, technical notes, risks, out of scope.

### sprint_planning
Extract: sprint goal, candidate tasks, dependencies, blockers, priorities, suggested owners, acceptance criteria.

### technical_decision_record
Extract: title, context, options considered, decision, consequences, risks, related tasks.

### github_issue_output
Generate GitHub-ready issue drafts with: title, description, context, tasks, acceptance criteria, labels, priority, dependencies.

### asana_task_output
Generate Asana-ready task drafts with: title, description, section suggestion, priority, dependencies, subtasks, acceptance criteria.

### development_summary
Extract: what was discussed, what needs to be built, what needs to be fixed, decisions made, blockers, next engineering steps.

## Rules

- Do not invent missing details. Use `unknown` when a field is not stated.
- Separate facts from assumptions.
- Group action items with owner, deadline, and priority.
- Keep raw source text separate from extracted artifacts.
- Mark unclear or ambiguous items explicitly.

## Output

Use the templates in `.agents/templates/` for formatting:
- `transcription-output.md`
- `meeting-notes.md`
- `bug-report.md`
- `feature-spec.md`
- `decision-record.md`
