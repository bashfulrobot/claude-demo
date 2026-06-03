---
hide:
  - navigation
---

# 2. Author

```text
/kong-skill-author
```

This loads Kong's conventions into context, then hands off to `skill-creator` to draft your `SKILL.md`. The quality of that draft depends almost entirely on the brief you give it. This is the real work.

## Give it a strong brief

When it asks what your skill does, don't wing it. Paste a structured brief. This one prompt is the difference between a near-mergeable first draft and three rounds of rework. Below it's filled in with the `deck-config-review` sample. **Replace every line with your own skill's details**, and fill in the angle brackets:

```text
Here's the skill I want to build:
- Name: <deck-config-review>
- Trigger: when I paste a decK config export and say "review this"
- Input: the decK YAML
- Job: flag risky or non-best-practice settings and explain each briefly
- Output: a short, prioritized findings list, nothing else
- Tools: <none, analyze the pasted config> OR <name the exact tool: deck, gh, an MCP>
- Auth: <none> OR <requires `gh auth login` or `sf org login`; add a pre-flight check>
- Guardrails: only flag what's actually in the config, don't invent settings, don't rewrite the file

Draft the SKILL.md in imperative voice. Ask me about anything unclear before you write.
```

That brief is just the [design principles](design.md) plus the good-prompt basics (context, a named output, and guardrails) written down.

!!! tip "While it drafts, hold it to these"
    - **Imperative voice.** "Read the file, extract the headings, write a summary": instructions, not "this skill summarizes files."
    - **Guardrails.** Say what it must NOT do. One sharp guardrail beats ten vague rules.
    - **Name your tools.** If `gh`, `sf`, or an MCP does the job, name it so the model doesn't improvise.
    - **Document auth.** Name the login and add a pre-flight check. The most-skipped step.
    - **Stay narrow.** One trigger, one job, one output.

## Tighten the draft

Once you have a draft, have Claude grade its own work:

```text
Review this SKILL.md against four principles: the tooling does the work and the
model only chooses arguments; name the exact tools instead of improvising calls;
document auth with a pre-flight check; keep one narrow trigger and a single output.
List what's weak, then rewrite just those parts.
```

Don't chase perfect; lint and preview come next.

Next: [Finalise](finalize.md)
