#!/usr/bin/env bash
#
# claude-demo — Ubuntu / Debian setup
# Installs git, GitHub CLI (gh), and Claude Code,
# then walks you through logging in to gh and Claude Code.

set -uo pipefail

bold=$(tput bold 2>/dev/null || true)
reset=$(tput sgr0 2>/dev/null || true)
say()  { printf '\n%s==> %s%s\n' "$bold" "$1" "$reset"; }
step() { printf '    - %s\n' "$1"; }

# --------------------------------------------------------------------- git ----
say "git"
if command -v git >/dev/null 2>&1; then
  step "already installed"
else
  sudo apt update
  sudo apt install git -y
fi

# ------------------------------------------- GitHub CLI (official apt repo) ----
say "GitHub CLI (gh)"
if command -v gh >/dev/null 2>&1; then
  step "already installed"
else
  (type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
    && sudo mkdir -p -m 755 /etc/apt/keyrings \
    && out=$(mktemp) && wget -nv -O"$out" https://cli.github.com/packages/githubcli-archive-keyring.gpg \
    && cat "$out" | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
    && sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
    && sudo mkdir -p -m 755 /etc/apt/sources.list.d \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && sudo apt update \
    && sudo apt install gh -y
fi

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
