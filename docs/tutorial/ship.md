---
hide:
  - navigation
---

# 6. Ship it

Three commands take you from "done editing" to "PR open."

## Commit

```text
/commit:commit
```

A Conventional Commit, signed, no AI attribution. You installed this plugin on the [Install](install.md) page; if you skipped it, a plain `git commit -m "feat(<skill-name>): ..."` works just as well.

## Open the PR

```text
/kong-skill-open-pr --apply
```

Creates the branch `<your-handle>-<skill-name>-skill`, pushes it, and opens the PR pre-filled with the team's quality-bar checklist.

!!! example "Example"
    For the running example, that branch is `bashfulrobot-deck-config-review-skill`, and the commit reads like `feat(deck-config-review): add decK config best-practice review skill`.

!!! warning "Branch-name rule"
    The verb refuses names that don't match `<handle>-<skill-name>-skill`. Editing a skill whose first PR already used that branch? Add a topic suffix, e.g. `bashfulrobot-deck-config-review-tweak-skill`.

## Watch CI

```text
/kong-skill-watch-checks --watch
```

Polls the scanners (Cisco AI Defense, Snyk, risk-capture) and prints a details URL for anything that fails. Run it only if a check flags.

Next: [You're done](done.md)
