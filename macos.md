# macOS setup

Copy and paste each block in order. **Run the check first — if it prints a version, skip that step**, you already have it.

Tools: Homebrew, git, GitHub CLI (`gh`), Claude Code.

---

## 1. Homebrew

The package manager we use to install git and gh.

Check:

```bash
brew --version
```

Install:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After it finishes, load brew into your current shell (Apple Silicon shown; Intel Macs use `/usr/local`):

```bash
eval "$(/opt/homebrew/bin/brew shellenv)"
```

---

## 2. git

Check:

```bash
git --version
```

Install:

```bash
brew install git
```

---

## 3. GitHub CLI (gh)

Check:

```bash
gh --version
```

Install:

```bash
brew install gh
```

---

## 4. Claude Code

Check:

```bash
claude --version
```

Install:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

---

## 5. Configure git

Set your identity (required), plus a few sensible defaults. **Replace the name and email** with yours.

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Recommended defaults:

```bash
git config --global init.defaultBranch main     # new repos start on 'main'
git config --global pull.rebase false            # merge on pull — predictable
git config --global push.default simple          # push the current branch
git config --global push.autoSetupRemote true    # 'git push' just works on new branches
```

> Tip: to keep your email private, use your GitHub noreply address
> (`ID+username@users.noreply.github.com` — find it under GitHub → Settings → Emails).

---

## 6. Log in to GitHub

```bash
gh auth login
```

Choose: **GitHub.com** → **HTTPS** → **Login with a web browser**, then follow the prompts.

Let gh manage your git credentials too:

```bash
gh auth setup-git
```

---

## 7. Log in to Claude Code

```bash
mkdir -p ~/kong-dev
cd ~/kong-dev
claude
```

Inside Claude, type:

```text
/login
```

Choose the **subscription** option — a browser opens, authenticate there. When done, press **Ctrl-D twice** to exit Claude.

---

Prefer one command? Run the all-in-one script instead: [`install-mac.sh`](install-mac.sh).
