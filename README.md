# Software Agent Team

A reusable agent operating system for software development projects. Defines 10 specialized agents that collectively cover the full software development lifecycle — from planning and architecture through implementation, testing, deployment, and documentation.

This workspace is fully compliant with the Antigravity IDE and is meant to be used as a template or directly opened in the IDE.

## Workspace Structure

```text
.
├── AGENTS.md                  # Agent team definition (Antigravity IDE)
├── GEMINI.md                  # Workspace context (Antigravity IDE)
├── setup.sh                   # Script to install this agent OS into other projects
├── SETUP.md                   # Installation guide
└── .agents/                   # All agent data and IDE configuration
    ├── rules/                 # Always-active workspace rules (.md)
    ├── workflows/             # Slash-command workflows (.md)
    ├── skills/                # Modular agent skills (.md)
    ├── agents/                # Detailed YAML agent contracts
    ├── workflows_yaml/        # Machine-readable YAML workflow definitions
    ├── templates/             # Reusable templates for tasks, reviews, reports
    ├── prompts/               # Shared prompt rules and standards
    ├── knowledge/             # Project knowledge base
    ├── evaluations/           # Quality rubrics and test cases
    └── examples/              # Practical workflow examples
```

## Antigravity IDE Integration

This repo uses a **dual-layer architecture**:

1. **IDE Layer** (`AGENTS.md`, `.agents/rules/`, `.agents/workflows/`, `.agents/skills/`, `GEMINI.md`) — what the Antigravity IDE reads natively for agent team, rules, slash commands, and skills.
2. **Contract Layer** (`.agents/agents/`, `.agents/workflows_yaml/`) — detailed YAML definitions with full input/output contracts, collaboration maps, and machine-readable workflows.

### Quick Start in Antigravity

**Option 1: New Project**
1. Clone this repository and open it as your workspace in Antigravity.
2. The IDE automatically loads `AGENTS.md`, `GEMINI.md`, and everything in `.agents/`.

**Option 2: Existing Project**
Run this command in your project root to download and install the framework:
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/borademircan/software-agent-team/main/setup.sh)"
```

**Next Steps**
1. The script will attempt to automatically register workflows and rules by sending a message to your Antigravity agent. If this fails, you must do it manually:
   - Go to the **Workflows** tab, click **+ Workspace**, type the workflow name (e.g. `feature-development`), press Enter, and then reference `@feature-development.md`.
   - Go to the **Rules** tab, click **+ Workspace**, and add `AGENTS.md` and `GEMINI.md`.
2. Type `/` in chat to see available workflows (slash commands).
3. Use `@agent-name` to address specific agents.

### Slash Commands

| Command | Workflow |
|---------|----------|
| `/help` | User manual & getting started guide |
| `/feature-development` | End-to-end feature build |
| `/bug-fix` | Bug investigation and fix |
| `/code-review` | Multi-dimensional code review |
| `/deployment` | Safe production deployment |
| `/architecture-review` | Technical proposal evaluation |
| `/voice-note-to-ticket` | Audio → transcript → tickets |
| `/ai-integration` | AI/LLM integration design |
| `/database-change` | Safe schema changes |

### Agent Mentions

| Mention | Agent |
|---------|-------|
| `@orchestrator` | Orchestrator |
| `@planner` | Product & Technical Planner |
| `@architect` | Software Architect |
| `@developer` | Fullstack Developer |
| `@devops` | Platform & DevOps |
| `@database` | Database & Data |
| `@qa` | Quality, Testing & Security |
| `@ai` | AI, Automation & Integration |
| `@docs` | Documentation & Knowledge |
| `@transcriber` | Transcription & Requirements |

---

## What Each Agent Does

### 1. Orchestrator Agent
Receives all user requests. Analyzes the goal, determines which agents are needed, creates an execution plan, tracks dependencies, identifies approval checkpoints, and prepares final delivery summaries. Does not implement work directly.

### 2. Product & Technical Planner Agent
Takes rough ideas, bug reports, and voice-note transcripts and converts them into structured requirements — feature briefs, user stories, acceptance criteria, task breakdowns, and implementation plans.

### 3. Software Architect Agent
Designs system architecture, service boundaries, module structure, API design, and data flow. Writes architecture decision records. Reviews scalability, performance, and security before implementation begins.

### 4. Fullstack Developer Agent
Implements features end to end — frontend, backend, APIs, business logic. Follows architecture decisions and coding standards. Identifies missing requirements before coding.

### 5. Platform & DevOps Agent
Handles Docker, CI/CD, deployment, environment configuration, queue workers, scheduled jobs, monitoring, backups, and rollback planning.

### 6. Database & Data Agent
Designs schemas, writes migrations, optimizes queries, creates analytics reports, validates data integrity, and protects against destructive data loss.

### 7. Quality, Testing & Security Agent
Reviews all work before production. Checks correctness, security, performance, accessibility, and compatibility. Creates test plans and produces a final readiness score.

### 8. AI, Automation & Integration Agent
Handles LLM integrations, MCP servers, RAG pipelines, vector databases, knowledge graphs, webhooks, third-party API connections, and workflow automation with proper retry logic and human-in-the-loop controls.

### 9. Documentation & Knowledge Agent
Writes READMEs, setup guides, API docs, changelogs, and decision records. Maintains the project knowledge base and glossary.

### 10. Transcription & Requirements Agent
Transcribes audio using local whisper-cpp and converts recordings into structured development artifacts — meeting notes, bug reports, feature requirements, technical decisions, and ticket drafts.

---

## Local Whisper Transcription

The Transcription & Requirements Agent uses a locally installed `whisper-cpp` CLI. No cloud APIs needed.

### Configuration

| Setting | Value |
|---------|-------|
| Engine | whisper-cpp |
| CLI Path | `/opt/homebrew/opt/whisper-cpp/bin/whisper-cli` |
| Model Path | `/Users/borademircan/Library/Application Support/com.prakashjoshipax.VoiceInk/WhisperModels/ggml-large-v3-turbo-q5_0.bin` |
| Output Directory | `/Users/borademircan/Documents/01-Work/Wonderfeel/cicd/dev/workspace/raw-data/transcriptions` |
| ffmpeg Required | Yes |

---

## How to Extend This Repo

- **Add new agents** — follow the template in `.agents/templates/agent.yaml`.
- **Add new workflows** — define flow steps referencing agent IDs.
- **Add new templates** — create Markdown or YAML files in `.agents/templates/`.
- **Add standards** — update `.agents/knowledge/standards/` and `.agents/prompts/`.
- **Add rubrics** — create evaluation rubrics in `.agents/evaluations/rubrics/`.
- **Store decisions** — use `.agents/knowledge/decisions/` with the decision record template.
- **Store context** — use `.agents/knowledge/project-context/` for project-specific information.
