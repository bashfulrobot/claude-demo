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

!!! tip "Keep the prompting cheatsheet open"
    The brief is a prompt, and the [prompting tips and tricks](prompting.md) page is worth referencing while you write it. Ctrl+click (Cmd+click on macOS) the link to open it in a new tab so you can keep it beside this one.

When it asks what your skill does, don't wing it. Paste a structured brief. This one prompt is the difference between a near-mergeable first draft and three rounds of rework. Below it's filled in with a `success-plan` sample. **Replace every line with your own skill's details**, and fill in the angle brackets:

```text
Here's the skill I want to build:
- Name: <success-plan>
- Trigger: when I say "draft a success plan" and give the account context
- Input: the account details I paste (goals, stakeholders, timeline, current state)
- Job: draft a customer success plan that follows established best practices
- Output: one structured success-plan document, nothing else
- Tools: <none, just draft text> OR <name the exact tool if one applies>
- Auth: <none> OR <requires a login; add a pre-flight check>
- Guardrails: prompt me for any recommended input I haven't provided before drafting; don't invent numbers; follow the structure, don't pad it

Draft the SKILL.md in imperative voice. Ask me about anything unclear before you write.
```

That brief is just the [design principles](design.md) plus the good-prompt basics (context, a named output, and guardrails) written down.

!!! example "Building a document skill from reference material"
    When your skill should follow an established format, point `skill-creator` straight at the source articles and let it bake the best practices into the `SKILL.md`:

    ```text
    Using these three articles, define a skill that drafts a customer success
    plan following the tips and best practices they outline. The skill should
    prompt me for any recommended inputs I haven't already provided before it
    drafts. Then have it account for the key GEP metrics Kong tracks:
    <metric 1>, <metric 2>, <metric 3>.

    https://www.everafter.ai/blog/crafting-customer-success-plans-that-drive-action
    https://www.custify.com/blog/elements-customer-success-plan/
    https://www.dock.us/library/customer-success-plan
    ```

    Swap `<metric 1>`, `<metric 2>`, `<metric 3>` for the GEP metrics you report on.

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
