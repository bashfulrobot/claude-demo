#!/usr/bin/env bash
#
# claude-demo — macOS setup
# Installs Homebrew, git, GitHub CLI (gh), and Claude Code,
# then walks you through logging in to gh and Claude Code.

set -uo pipefail

bold=$(tput bold 2>/dev/null || true)
reset=$(tput sgr0 2>/dev/null || true)
say()  { printf '\n%s==> %s%s\n' "$bold" "$1" "$reset"; }
step() { printf '    - %s\n' "$1"; }

# ---------------------------------------------------------------- Homebrew ----
say "Homebrew"
if command -v brew >/dev/null 2>&1; then
  step "already installed"
else
  step "installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make brew available in THIS shell (Apple Silicon, then Intel).
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# --------------------------------------------------------------------- git ----
say "git"
if command -v git >/dev/null 2>&1; then step "already installed"; else brew install git; fi

# -------------------------------------------------------------- GitHub CLI ----
say "GitHub CLI (gh)"
if command -v gh >/dev/null 2>&1; then step "already installed"; else brew install gh; fi

# ------------------------------------------------------------- Claude Code ----
say "Claude Code"
if command -v claude >/dev/null 2>&1; then step "already installed"; else curl -fsSL https://claude.ai/install.sh | bash; fi

# ---------------------------------------------------------- working folder ----
say "Working folder"
printf '    Create a working folder at ~/kong-dev? [Y/n] '
read -r reply
case "$reply" in
  [Nn]*) step "skipped" ;;
  *)     mkdir -p "$HOME/kong-dev"; step "created ~/kong-dev" ;;
esac

# ----------------------------------------------------------------- logins -----
cat <<'EOF'

================================================================
  Two logins to do by hand
================================================================

1) GitHub CLI
   --------------------------------------------------------------
   Run:           gh auth login
   Choose:        GitHub.com
   Protocol:      HTTPS
   Authenticate:  Login with a web browser
   Then follow the on-screen instructions.

2) Claude Code
   --------------------------------------------------------------
   cd ~/kong-dev
   claude                  # starts Claude Code
   /login                  # type this inside Claude
   Choose:        the subscription option
   A browser opens -- authenticate there.
   When finished, press Ctrl-D twice to exit Claude.

================================================================
  Setup complete.
================================================================
EOF
