# Ubuntu / Debian setup

Copy and paste each block in order. **Run the check first — if it prints a version, skip that step**, you already have it.

Tools: git, GitHub CLI (`gh`), Claude Code.

---

## 1. git

Check:

```bash
git --version
```

Install:

```bash
sudo apt update
sudo apt install git -y
```

---

## 2. GitHub CLI (gh)

Check:

```bash
gh --version
```

Install (official GitHub apt repository):

```bash
(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O"$out" https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat "$out" | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
```

---

## 3. Claude Code

Check:

```bash
claude --version
```

Install:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

---

## 4. Configure git

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

## 5. Log in to GitHub

```bash
gh auth login
```

Choose: **GitHub.com** → **HTTPS** → **Login with a web browser**, then follow the prompts.

Let gh manage your git credentials too:

```bash
gh auth setup-git
```

---

## 6. Log in to Claude Code

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

Prefer one command? Run the all-in-one script instead: [`install-ubuntu.sh`](install-ubuntu.sh).
