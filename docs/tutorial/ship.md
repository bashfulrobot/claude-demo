---
hide:
  - navigation
---

# 6. Ship it

Three commands take you from "done editing" to "PR open."

## Commit

Stage and commit your skill. This repo doesn't require signed commits, so a plain commit is all you need:

```bash
git add -A
git commit -m "feat(<skill-name>): add <what it does>"
```

!!! note "The commit plugin needs signing set up"
    `/commit:commit` writes a tidy Conventional Commit for you, but it **signs** the commit, which needs GPG or SSH signing configured first. If you didn't set that up, don't worry: use the plain `git commit` above. `main` doesn't require signed commits, so an unsigned one merges fine.

## Open the PR

```text
/kong-skill-open-pr --apply
```

Creates the branch `<your-handle>-<skill-name>-skill`, pushes it to the Kong repo, and opens the PR pre-filled with the team's quality-bar checklist. This needs the write access from the [access step](access.md); the branch is never `main`, and `main` is protected, so nothing merges without a reviewed PR.

!!! example "Example"
    For the running example, that branch is `bashfulrobot-success-plan-skill`, and the commit reads like `feat(success-plan): add customer success plan drafting skill`.

!!! warning "Branch-name rule"
    The verb refuses names that don't match `<handle>-<skill-name>-skill`. Editing a skill whose first PR already used that branch? Add a topic suffix, e.g. `bashfulrobot-success-plan-tweak-skill`.

## Watch CI

```text
/kong-skill-watch-checks --watch
```

Polls the scanners (Cisco AI Defense, Snyk, risk-capture) and prints a details URL for anything that fails.

## If a check fails, fix and resubmit

A red check is normal; it's the scanners telling you what to adjust, not a dead end. You don't open a new PR. Fix it on the **same branch** and the PR updates itself:

1. Open the details URL the check printed and read what it flagged.
2. Fix it in your `SKILL.md` (or rerun `/kong-skill-lint plugins/<skill-name>` if it's a lint-style issue) until it's clean locally.
3. Commit and push to the same branch:

    ```bash
    git add -A
    git commit -m "fix(<skill-name>): address scanner finding"
    git push
    ```

The PR picks up the new commit and the checks re-run automatically. Repeat until they're green.

Next: [You're done](done.md)
