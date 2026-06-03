---
hide:
  - navigation
---

# 4. Lint

```text
/kong-skill-lint plugins/<skill-name>
```

Static checks: em-dashes (banned repo-wide), GNU-only shell flags, frontmatter, naming rules, and broken links. It's read-only and exits non-zero on any finding.

!!! tip "Most common failure"
    Em-dashes. If it flags one, replace it with a comma or a period and run again.

Fix what it reports, then re-run until it's clean.

Next: [Preview](preview.md)
