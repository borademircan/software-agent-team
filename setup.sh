#!/bin/bash
#
# Software Agent Team — Remote Setup Script
#
# Installs the Antigravity IDE agent operating system directly from GitHub
# into your current workspace.
#
# Usage:
#   bash -c "$(curl -fsSL https://raw.githubusercontent.com/borademircan/software-agent-team/main/setup.sh)"
#

set -euo pipefail

# Configuration: Replace with your actual GitHub repository URL
REPO_URL="https://github.com/borademircan/software-agent-team.git"
BRANCH="main"

TARGET_DIR="$(pwd)"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║       Software Agent Team — Setup                ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
echo "Target:    ${TARGET_DIR}"
echo "Fetching:  ${REPO_URL} (${BRANCH})"
echo ""

# Track what we do
INSTALLED=()
SKIPPED=()

# Create a temporary directory for cloning
TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT

echo "⬇️  Downloading agent framework..."
git clone --quiet --depth 1 --branch "$BRANCH" "$REPO_URL" "$TMP_DIR/repo"

# Function to safely copy files
copy_safe() {
    local src="$1"
    local dest="$2"
    local desc="$3"

    if [ -f "$dest" ] || [ -d "$dest" ]; then
        SKIPPED+=("$desc (already exists)")
    else
        cp -R "$src" "$dest"
        INSTALLED+=("$desc")
    fi
}

echo "📦 Installing files..."

# 1. Copy the .agents directory
copy_safe "$TMP_DIR/repo/.agents" "${TARGET_DIR}/.agents" ".agents/ (Framework & Rules)"

# 2. Copy AGENTS.md
copy_safe "$TMP_DIR/repo/AGENTS.md" "${TARGET_DIR}/AGENTS.md" "AGENTS.md"

# 3. Copy GEMINI.md
copy_safe "$TMP_DIR/repo/GEMINI.md" "${TARGET_DIR}/GEMINI.md" "GEMINI.md"

# --- Report ---
echo ""
if [ ${#INSTALLED[@]} -gt 0 ]; then
    echo "✅ Installed:"
    for item in "${INSTALLED[@]}"; do
        echo "   → ${item}"
    done
fi

if [ ${#SKIPPED[@]} -gt 0 ]; then
    echo ""
    echo "⏭  Skipped:"
    for item in "${SKIPPED[@]}"; do
        echo "   → ${item}"
    done
fi

echo ""
echo "─────────────────────────────────────────────────────"
echo "Setup complete."
echo ""
echo "Next steps:"
echo "  The setup will now attempt to automatically register your workflows and rules"
echo "  by sending a command to your Antigravity Agent."
echo ""
if command -v antigravity &> /dev/null; then
    echo "🤖 Asking Antigravity Agent to register rules and workflows..."
    antigravity chat "Please add AGENTS.md and GEMINI.md to my Workspace Rules. Then, for every markdown file in the .agents/workflows/ directory, add it to my Workspace Workflows using the file's basename (without .md) as the workflow name." &
    echo "✅ Request sent to Antigravity Agent!"
else
    echo "⚠️  Could not find 'antigravity' CLI to auto-register workflows."
fi
echo ""
echo "  If the agent cannot do it automatically (Fallback), please do this manually:"
echo "  1. Go to the 'Rules' tab, click '+ Workspace', and add AGENTS.md and GEMINI.md."
echo "  2. Go to the 'Workflows' tab, click '+ Workspace'."
echo "  3. Enter the workflow name (e.g., 'feature-development') and press Enter."
echo "  4. Reference the corresponding file (e.g., @feature-development.md) or paste its contents."
echo "  5. Repeat for all files in .agents/workflows/."
echo ""
echo "  Use @agent-name to address specific agents in the chat."
echo ""
echo "Available slash commands:"
echo "  /help                   /feature-development"
echo "  /bug-fix                /code-review"
echo "  /deployment             /architecture-review"
echo "  /voice-note-to-ticket   /ai-integration"
echo "  /database-change"
echo ""
