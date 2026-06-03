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
    /kong-skill-test deck-config-review
    ```
    opens the catalog page for `deck-config-review`. If the one-line description doesn't make the trigger and output obvious at a glance, tighten it in `SKILL.md` and re-run.

Optional, but it's the fastest way to catch a confusing description before reviewers do.

Next: [Ship it](ship.md)
