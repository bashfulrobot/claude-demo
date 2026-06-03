# claude-demo

Setup for the **Claude Code Skills** workshop. Pick your platform and follow the
step-by-step guide — every step has a version check, so skip anything you already have.

## 📖 Setup guide

**→ https://bashfulrobot.github.io/claude-demo/**

A rendered, step-by-step site (macOS + Ubuntu tabs) covering: Homebrew, git,
GitHub CLI, Claude Code, git config, and the GitHub + Claude logins.

## Prefer one command?

One-shot scripts that run the installs and print the login steps. `curl` is
built in, so you don't need git yet:

```bash
# macOS
curl -fsSLO https://raw.githubusercontent.com/bashfulrobot/claude-demo/main/install-mac.sh
chmod +x install-mac.sh && ./install-mac.sh

# Ubuntu / Debian
curl -fsSLO https://raw.githubusercontent.com/bashfulrobot/claude-demo/main/install-ubuntu.sh
chmod +x install-ubuntu.sh && ./install-ubuntu.sh
```

## Repo layout

- `docs/` — the MkDocs setup guide (source for the site above)
- `install-mac.sh`, `install-ubuntu.sh` — the one-shot scripts
- `mkdocs.yml` — site config (Material theme, Kong palette)
- `.github/workflows/docs.yml` — rebuilds + deploys the site on every push that touches `docs/`

## Build the docs locally

```bash
pip install -r requirements.txt
mkdocs serve   # live preview at http://127.0.0.1:8000
```
