---
hide:
  - navigation
---

# Clone the repo

The `/kong-skill-*` commands run **at the root of the kong-skills repo**, so get a local copy.

```bash
cd ~/kong-dev
git clone https://github.com/Kong/kong-skills.git
cd kong-skills
```

!!! warning "Permission denied?"
    If the clone fails with a permissions error, your **Kong SSO authorization** from the access step isn't in place. Go back and authorize it.

Now start Claude Code from inside the repo:

```bash
claude
```

Leave this session open. Every step from here runs in it.

Next: [Pick your skill](idea.md)
