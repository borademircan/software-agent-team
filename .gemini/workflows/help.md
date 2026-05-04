# Help & Getting Started

Welcome to the **Software Agent Team** operating system. This command explains how to use the 10-agent team and available workflows within this workspace.

## 🤖 The Agent Team

You can speak directly to any agent using `@agent-name` in the chat.

| Agent | Use them when you need to... |
|-------|------------------------------|
| **`@orchestrator`** | Figure out who should do what, or plan a complex task. |
| **`@planner`** | Break down ideas into user stories, tasks, or feature briefs. |
| **`@architect`** | Design system architecture, APIs, or make technical decisions. |
| **`@developer`** | Write code, build features, fix bugs, or implement APIs. |
| **`@devops`** | Handle Docker, CI/CD pipelines, or deployment configurations. |
| **`@database`** | Write SQL, design schemas, or plan database migrations. |
| **`@qa`** | Review code for correctness, security, performance, or testing. |
| **`@ai`** | Design LLM integrations, automations, or prompt pipelines. |
| **`@docs`** | Write READMEs, API documentation, or architecture records. |
| **`@transcriber`** | Convert audio recordings into structured meeting notes or tickets. |

## 🚀 Workflows (Slash Commands)

Use `/` in the chat to trigger structured workflows:

- **`/feature-development`** — Build a new feature from planning to delivery.
- **`/bug-fix`** — Investigate a bug, fix the root cause, and verify it.
- **`/code-review`** — Perform a multi-dimensional code, security, and performance review.
- **`/deployment`** — Plan a safe production release with approval checkpoints.
- **`/architecture-review`** — Evaluate a technical proposal and create a decision record.
- **`/voice-note-to-ticket`** — Process local audio files into development tickets.
- **`/ai-integration`** — Design an AI/LLM automation pipeline.
- **`/database-change`** — Safely design and review schema changes or migrations.

## 🛡️ Core Rules

All agents follow strict rules located in `.agents/rules/`.
- They **must** ask for your human approval before destructive actions, deployments, or security changes.
- They **will not** invent missing information (they use `unknown`).
- They **strive** to keep changes minimal and preserve existing architecture.

## 📚 Knowledge Base

The team draws context from `.agents/knowledge/`. You can improve their performance by adding your specific context to:
- `.agents/knowledge/project-context/`
- `.agents/knowledge/standards/`
- `.agents/knowledge/decisions/`

*If you need help with a specific task right now, just ask! Or type `@orchestrator I need help with...`*
