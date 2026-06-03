---
hide:
  - navigation
---

# 2. Author

```text
/kong-skill-author
```

This loads Kong's conventions into context, then hands off to `skill-creator` to draft your `SKILL.md`. Answer its questions about what your skill does — Claude writes the first draft.

This step is where skill *quality* is won. Steer the draft with these — they're the difference between a skill the team adopts and one that quietly rots:

!!! tip "Make the skill better as you draft"
    - **Imperative voice.** "Read the file, extract the headings, write a summary" — instructions, not "this skill summarizes files."
    - **Guardrails.** Say what it must NOT do ("do not invent ARR figures"). One sharp guardrail beats ten vague rules.
    - **Name your tools.** If `gh`, `sf`, or an MCP already does the job, say so explicitly so the model doesn't improvise an API call.
    - **Document auth.** If a tool needs login (`gh auth login`, `sf org login`), name it and add a pre-flight check. This is the most-skipped step and the top cause of "works on my machine."
    - **Stay narrow.** One trigger, one job, one named output.

Don't chase perfect — lint and preview come next.

Next: [Finalise](finalize.md)
