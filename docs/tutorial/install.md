---
hide:
  - navigation
---

# Install the lifecycle tools

One time per machine. In **any** Claude Code session, run:

```text
/plugin marketplace add Kong/kong-skills
/plugin marketplace add anthropics/claude-code
/plugin install kong-skill@kong-skills
/plugin install commit@kong-skills
/plugin install skill-creator@claude-plugins-official
```

Those three plugins are the full toolset this tutorial uses:

- **`kong-skill`** gives you every `/kong-skill-*` verb: `init`, `author`, `finalize`, `lint`, `test`, `open-pr`, `watch-checks`.
- **`skill-creator`** is Anthropic's drafting plugin. `/kong-skill-author` hands the actual `SKILL.md` writing off to it, so `author` fails at the hand-off without it.
- **`commit`** provides the `/commit:commit` helper that the [Ship it](ship.md) step uses for a clean, signed Conventional Commit.

!!! note "Why three separate installs"
    `kong-skill` doesn't bundle the other two; they're independent plugins (skill-creator is Anthropic's, from the `claude-plugins-official` marketplace). Installing all three now means every step of the tutorial just works.

You also need **Python 3**. Every `/kong-skill-*` verb is a small Python helper (the commands run `python3 -m scripts.skill_...` under the hood), so without it nothing in the chain runs. You almost certainly already have it:

```bash
python3 --version
```

!!! note "Only for the optional Preview step"
    [just](https://just.systems/) is the one extra tool, and only [Preview](preview.md) (`/kong-skill-test`) uses it: that step runs `just docs-build` to render your catalog page locally. The rest of the chain doesn't touch it. Install it only if you plan to preview: `brew install just` on macOS, or see [just.systems](https://just.systems/) for Ubuntu.

!!! tip "Refresh later"
    `/plugin marketplace update` pulls in new verbs when the team ships them.

Next: [Clone the repo](clone.md)
