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
echo "  1. Open this workspace in Antigravity IDE"
echo "  2. Go to the 'Rules' tab and click '+ Workspace' to add AGENTS.md and GEMINI.md."
echo "  3. Go to the 'Workflows' tab and click '+ Workspace' to add the files in .agents/workflows/."
echo "  4. Use @agent-name to address specific agents"
echo ""
echo "Available slash commands:"
echo "  /help                   /feature-development"
echo "  /bug-fix                /code-review"
echo "  /deployment             /architecture-review"
echo "  /voice-note-to-ticket   /ai-integration"
echo "  /database-change"
echo ""
