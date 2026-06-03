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

!!! info "`deck-config-review` is just a sample"
    From here on, the examples follow one made-up skill, `deck-config-review`, so the commands stay concrete. You're building **your own** skill, the one you picked on the [last page](idea.md). Swap your skill's name in everywhere you see `deck-config-review`.

!!! example "Example"
    ```text
    /kong-skill-init deck-config-review
    ```
    creates:
    ```
    plugins/deck-config-review/
    ├── .claude-plugin/
    │   └── plugin.json          # draft manifest
    └── skills/
        └── deck-config-review/
            └── SKILL.md         # draft you fill in next
    ```

Next: [Author the skill](author.md)
