# claude-demo

Setup scripts for the **Claude Code Skills** workshop. They install the tools you
need and then walk you through logging in.

**Installs:** git, GitHub CLI (`gh`), Homebrew (macOS only), and Claude Code.
**Then guides you through:** `gh auth login` and Claude Code `/login`.

## Use

```bash
git clone https://github.com/bashfulrobot/claude-demo.git
cd claude-demo
chmod +x install-mac.sh install-ubuntu.sh

# macOS
./install-mac.sh

# Ubuntu / Debian
./install-ubuntu.sh
```

Each script is safe to re-run — anything already installed is skipped. It will
also offer to create a working folder at `~/kong-dev`.

## Logins (handled at the end of each script)

**GitHub CLI**

```bash
gh auth login
# choose: GitHub.com  ->  HTTPS  ->  Login with a web browser
```

**Claude Code**

```bash
cd ~/kong-dev
claude        # start Claude Code
/login        # type this inside Claude, choose the subscription option
              # a browser opens to authenticate; Ctrl-D twice to exit
```
