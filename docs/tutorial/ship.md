---
hide:
  - navigation
---

# 6. Ship it

You're working from a fork, so you push your branch to **your fork** (`origin`) and open the PR against **Kong** (`upstream`). The `/kong-skill-open-pr` verb is built for the canonical Kong clone (it pushes to `origin` assuming that's Kong), so for the fork model you run these few steps by hand.

## Commit

```text
/commit:commit
```

A Conventional Commit, signed, no AI attribution. You installed this plugin on the [Install](install.md) page; if you skipped it, a plain `git commit -m "feat(<skill-name>): ..."` works just as well.

## Push a branch to your fork

Name the branch `<your-handle>-<skill-name>-skill` (the marketplace convention), then push it to your fork:

```bash
git checkout -b <your-handle>-<skill-name>-skill
git push -u origin <your-handle>-<skill-name>-skill
```

!!! example "Example"
    ```bash
    git checkout -b bashfulrobot-success-plan-skill
    git push -u origin bashfulrobot-success-plan-skill
    ```

## Open the PR against Kong

```bash
gh pr create --repo Kong/kong-skills --base main \
  --head <your-handle>:<your-handle>-<skill-name>-skill --web
```

`--repo Kong/kong-skills` targets the upstream repo, `--head <your-handle>:<branch>` points at the branch on your fork, and `--web` opens the browser so you can fill in the PR with Kong's template and the quality-bar checklist. Submit it there.

## Watch CI

After the PR is open, the scanners (Cisco AI Defense, Snyk, risk-capture) run on it. Watch them on the PR page, or from the terminal with the PR number:

```bash
gh pr checks <pr-number> --repo Kong/kong-skills
```

Next: [You're done](done.md)
