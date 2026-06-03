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

You also need a small toolchain. You already have **git** and **gh** from the setup guide; add the rest if they're missing:

- **Python ≥ 3.10** — usually already installed (`python3 --version`)
- **[just](https://just.systems/)** — `brew install just` (macOS) / see just.systems for Ubuntu
- **zip** — `sudo apt install zip -y` on Ubuntu; preinstalled on macOS

!!! tip "Refresh later"
    `/plugin marketplace update` pulls in new verbs when the team ships them.

Next: [Clone the repo](clone.md)
