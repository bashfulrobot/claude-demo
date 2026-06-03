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

Next: [Lint](lint.md)
