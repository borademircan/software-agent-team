# Workspace Context

This workspace uses the **Software Agent Team** — a 10-agent operating system for software development.

## Agent Framework Location

The full agent framework lives in `software-agent-team/`. It contains:

| Directory | Purpose |
|-----------|---------|
| `.agents/agents/` | Detailed YAML agent contracts (inputs, outputs, collaboration maps) |
| `.agents/workflows_yaml/` | Machine-readable YAML workflow definitions |
| `.agents/templates/` | Reusable Markdown/YAML templates |
| `.agents/prompts/` | Shared prompt rules and standards |
| `.agents/knowledge/` | Project knowledge base, standards, decisions, glossary |
| `.agents/evaluations/` | Quality rubrics and test cases |
| `.agents/examples/` | Practical usage examples |

## Agent Team

The 10 agents are defined in `AGENTS.md`. Address them with `@` mentions:
- `@orchestrator` — coordination and routing
- `@planner` — requirements and task planning
- `@architect` — system design and decision records
- `@developer` — fullstack implementation
- `@devops` — infrastructure and deployment
- `@database` — schemas, SQL, migrations
- `@qa` — quality, testing, security review
- `@ai` — AI/LLM integrations and automation
- `@docs` — documentation and knowledge base
- `@transcriber` — audio transcription and requirements extraction

## Workflows (Slash Commands)

Available as `/workflow-name`:
- `/help` — user manual and getting started guide
- `/feature-development` — end-to-end feature build
- `/bug-fix` — investigate and fix bugs
- `/code-review` — multi-dimensional code review
- `/deployment` — safe production deployment
- `/architecture-review` — evaluate technical proposals
- `/voice-note-to-ticket` — transcribe audio → extract tickets
- `/ai-integration` — design AI/LLM integrations
- `/database-change` — safe schema changes

## Skills

Agents can reference skills in `.agents/skills/`:
- `transcription.md` — local whisper-cpp execution
- `code-review.md` — structured review procedure
- `requirements-extraction.md` — extract artifacts from text
- `architecture-decision.md` — produce architecture decision records

## Rules

Always-active rules in `.agents/rules/`:
- `core-system-rules.md` — safety, approval, scope
- `coding-standards.md` — code quality
- `security-rules.md` — security guardrails
- `transcription-rules.md` — audio processing safety
