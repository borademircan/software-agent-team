# Setup Guide

This workspace is designed to be a template. You can either use it directly, or install the agent team into an existing project.

## Option 1: Use Directly (New Project)

1. Clone or copy this entire folder.
2. Open it as your workspace in Antigravity IDE.
3. Start building! The IDE automatically discovers `AGENTS.md`, `GEMINI.md`, and `.agents/`.

## Installation

To install the agent team into your current project, run the following command in your terminal:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/borademircan/software-agent-team/main/setup.sh)"
```

### What Gets Installed?

The script copies the IDE integration layer to your target directory. It is **non-destructive** and will skip any file or folder that already exists.

```text
your-existing-project/                 ← target directory
├── AGENTS.md                          ← Agent team definition
├── GEMINI.md                          ← Workspace context
└── .agents/                           ← Framework and IDE config
    ├── rules/                         # Behavioral rules
    ├── workflows/                     # Slash-command workflows
    ├── skills/                        # Modular agent skills
    ├── agents/                        # YAML agent contracts
    ├── workflows_yaml/                # YAML workflow definitions
    ├── templates/                     # Reusable templates
    ├── prompts/                       # Prompt standards
    ├── knowledge/                     # Knowledge base
    ├── evaluations/                   # Quality rubrics
    └── examples/                      # Usage examples
```

### After Installation

1. Open your project in Antigravity IDE.
2. Update `GEMINI.md` to reflect your specific project's tech stack and context.
3. Update `.agents/knowledge/project-context/` with your specific architecture.
4. Type `/` in chat to use workflows, or `@agent-name` to address agents.

## Uninstalling from a Project

To remove the agent team from an existing workspace:

```bash
cd /path/to/your/existing-project
rm AGENTS.md GEMINI.md
rm -rf .agents/
```
