---
hide:
  - navigation
---

# Install the lifecycle tools

One time per machine. In **any** Claude Code session, run:

```text
/plugin marketplace add Kong/kong-skills
/plugin install kong-skill@kong-skills
```

That installs every `/kong-skill-*` verb you'll use: `init`, `author`, `finalize`, `lint`, `test`, `open-pr`, `watch-checks`.

!!! warning "One required co-install"
    `/kong-skill-author` hands the actual drafting off to Anthropic's **skill-creator** plugin. It's a *separate* plugin — `kong-skill` doesn't bundle it — so install it now or `author` will fail at the hand-off:

    ```text
    /plugin install skill-creator@claude-plugins-official
    ```

    If that marketplace isn't registered yet, add it first with `/plugin marketplace add anthropics/claude-code`.

!!! tip "Optional: the commit helper"
    The [Ship it](ship.md) step uses `/commit:commit` for a clean Conventional Commit. It's another separate plugin — install it if you want it, or just use plain `git commit`:

    ```text
    /plugin install commit@kong-skills
    ```

You also need a small toolchain. You already have **git** and **gh** from the setup guide; add the rest if they're missing:

- **Python ≥ 3.10** — usually already installed (`python3 --version`)
- **[just](https://just.systems/)** — `brew install just` (macOS) / see just.systems for Ubuntu
- **zip** — `sudo apt install zip -y` on Ubuntu; preinstalled on macOS

!!! tip "Refresh later"
    `/plugin marketplace update` pulls in new verbs when the team ships them.

Next: [Clone the repo](clone.md)
