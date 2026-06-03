---
hide:
  - navigation
---

# 5. Preview

```text
/kong-skill-test <skill-name>
```

Builds the docs site exactly the way CI does and opens your skill's catalog page in the browser. Read it the way someone deciding whether to install would: is the description clear?

!!! example "Example"
    ```text
    /kong-skill-test success-plan
    ```
    opens the catalog page for `success-plan`. If the one-line description doesn't make the trigger and output obvious at a glance, tighten it in `SKILL.md` and re-run.

Optional, but it's the fastest way to catch a confusing description before reviewers do. It runs the same `--strict` build CI uses, so clearing it here means CI clears too.

!!! warning "If the build fails"
    The command runs the build under `--strict`, which fails on warnings, so it will sometimes report errors instead of opening a page. Two common cases:

    - **Build failed:** usually a broken link or malformed markdown in your `SKILL.md`. Read the reported line, fix it, and re-run. (`/kong-skill-lint plugins/<skill-name>` catches many of these too.)
    - **Skill missing from catalog:** the build worked but your skill has no page, which means a wiring gap (its marketplace entry or `plugin.json`). Re-running `/kong-skill-init <skill-name>` re-wires it; then preview again.

Next: [Ship it](ship.md)
