---
hide:
  - navigation
---

# 1. Scaffold

In your Claude Code session at the repo root:

```text
/kong-skill-init <skill-name>
```

Use a short, hyphenated name for the job. In one shot this creates the plugin folder, a draft `plugin.json` and `SKILL.md`, registers the skill in the marketplace catalog, and wires up dependencies.

!!! info "`success-plan` is just a sample"
    From here on, the examples follow one made-up skill, `success-plan`, so the commands stay concrete. You're building **your own** skill, the one you picked on the [last page](idea.md). Swap your skill's name in everywhere you see `success-plan`.

!!! example "Example"
    ```text
    /kong-skill-init success-plan
    ```
    creates:
    ```
    plugins/success-plan/
    ├── .claude-plugin/
    │   └── plugin.json          # draft manifest
    └── skills/
        └── success-plan/
            └── SKILL.md         # draft you fill in next
    ```

Next: [Author the skill](author.md)
