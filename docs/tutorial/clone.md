---
hide:
  - navigation
---

# Fork and clone the repo

You don't have write access to `Kong/kong-skills`, so you'll work from your **own fork** and open a pull request back to Kong. One command forks it and clones your fork:

```bash
cd ~/kong-dev
gh repo fork Kong/kong-skills --clone
cd kong-skills
```

That creates the fork under your account, clones it locally, and wires up two remotes: `origin` is **your fork** (you can push to it) and `upstream` is **Kong/kong-skills** (where the PR lands). Confirm:

```bash
git remote -v
```

You should see your username on `origin` and `Kong` on `upstream`.

!!! warning "Fork failed?"
    If `gh repo fork` errors, your **Kong SSO authorization** from the access step isn't in place, or you're not yet a member of the Kong org. Go back and sort that out first.

Now start Claude Code from inside the repo:

```bash
claude
```

Leave this session open. Every step from here runs in it.

Next: [Pick your skill](idea.md)
