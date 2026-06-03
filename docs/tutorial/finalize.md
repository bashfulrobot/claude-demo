---
hide:
  - navigation
---

# 3. Finalise

```text
/kong-skill-finalize plugins/<skill-name> --write
```

This scans your `SKILL.md` and any bundled scripts for the tools they call, then fills in `requirements`, `platforms`, and `surfaces` in `plugin.json`.

Run it without `--write` first to see what it proposes, then add `--write` to apply.

!!! example "Example"
    ```text
    /kong-skill-finalize plugins/success-plan --write
    ```
    A pure draft-text skill adds little. If yours called `gh`, finalize would propose adding `gh` to `requirements` and mark the platforms and surfaces it runs on.

!!! warning "Replace the placeholder description now"
    Scaffolding wrote `"Placeholder description for <skill-name>. Replace before merging."` into your `plugin.json` and into the `.claude-plugin/marketplace.json` entry. Finalize doesn't touch the description, lint won't flag it, and the catalog page reads from your `SKILL.md` instead, so it stays invisible until it shows up **as your PR title**. Replace it in both files with a real one-line description (the same third-person "what it does, when to use it" you wrote in `SKILL.md`):

    - `plugins/<skill-name>/.claude-plugin/plugin.json` → `description`
    - `.claude-plugin/marketplace.json` → your skill's entry

Next: [Lint](lint.md)
