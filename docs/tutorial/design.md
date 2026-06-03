---
hide:
  - navigation
---

# Design principles

Two minutes before you scaffold. Kong's skills follow four principles. The short version:

1. **Tooling acts, the model decides.** The skill runs deterministic tools (a CLI, a script, a validated API call); the model only picks the arguments. Don't ask the model to "write the API call" when a command already does it.
2. **Use the strongest typed contract.** Prefer an existing CLI, then a direct API, then an MCP, whichever gives the firmest guarantees (validated arguments, handled auth). If you ship your own script, it has to validate inputs just as strictly.
3. **Auth is part of the skill.** If a tool needs login, document which, how to authenticate, and add a pre-flight check that fails fast. This is the most-skipped step.
4. **The model gathers; the tooling acts.** The model reads intent and pulls facts from the conversation; the tooling takes validated arguments and does the deterministic work. That split is what makes a skill testable and auditable.

!!! note "Full read"
    The complete rationale, with examples: [Authoring principles](https://cuddly-adventure-1qg47ep.pages.github.io/contributing/principles/).

You'll put these into practice when you draft the `SKILL.md` next.

Next: [Scaffold](init.md)
