---
hide:
  - navigation
---

# Logins

Two logins to finish setup.

## GitHub

```bash
gh auth login
```

Choose: **GitHub.com** → **HTTPS** → **Login with a web browser**, then follow the prompts.

Let `gh` manage your git credentials too:

```bash
gh auth setup-git
```

## Claude Code

```bash
mkdir -p ~/kong-dev
cd ~/kong-dev
claude
```

Inside Claude, type:

```text
/login
```

Choose the **subscription** option. A browser opens; authenticate there. When done, press **Ctrl-D twice** to exit Claude.

Next: [Next steps](next-steps.md).
