# Configure git

Set your identity (required) and a few sensible defaults.

**Your identity** — replace the name and email with yours:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

!!! tip "Keep your email private"
    Use your GitHub noreply address (`ID+username@users.noreply.github.com`) — find it under **GitHub → Settings → Emails**.

**Recommended defaults:**

```bash
git config --global init.defaultBranch main     # new repos start on 'main'
git config --global pull.rebase false            # merge on pull — predictable
git config --global push.default simple          # push the current branch
git config --global push.autoSetupRemote true    # 'git push' just works on new branches
```

**Check your settings:**

```bash
git config --global --list
```

Next: [Logins](logins.md).
