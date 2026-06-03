# claude-demo

Setup for the **Claude Code Skills** workshop. Pick your platform and follow the
copy/paste guide — every step has a version check, so skip anything you already have.

## Setup guides

- **macOS** → [macos.md](macos.md)
- **Ubuntu / Debian** → [ubuntu.md](ubuntu.md)

Each guide installs git, GitHub CLI (`gh`), and Claude Code (plus Homebrew on
macOS), sets sensible git config, and walks you through `gh` and Claude Code login.

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

## Supplemental docs

<!-- Add workshop-specific guides here as we write them. -->

- _(coming soon)_

External references:

- [Claude Code docs](https://code.claude.com/docs/en/overview)
- [GitHub CLI manual](https://cli.github.com/manual/)
- [Homebrew](https://brew.sh/)
