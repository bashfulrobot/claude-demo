---
hide:
  - navigation
---

# Prompting tips and tricks

The brief you hand `skill-creator` is just a prompt, and so is every refinement after it. A few habits, straight from Claude's prompting best practices, make all of them land better. Keep this page open while you write.

## Precise beats vague

The single biggest lever. A vague prompt makes Claude guess; a precise one makes it deliver. Name the format, the length, the sections, and the audience.

```text
# vague
Write a success plan.

# precise
Draft a one-page customer success plan for a mid-market account that's onboarding.
Sections: goals, success metrics, 90-day milestones, risks, owner. Use short
bullets. Ask me for the account name, renewal date, and primary goal if I
haven't given them.
```

## Give Claude the context it needs

State who it's for, what you're starting from, and any constraints up front. Claude can't read your account; tell it the stage, the tone, and the stakes.

## Show an example when format matters

If the output has to look a certain way, paste a short example of a good one. One example beats a paragraph of description.

## Say what it must NOT do

Guardrails are as important as instructions. One sharp "don't" prevents a whole class of bad output.

```text
Don't invent metrics or dates. If a number isn't in what I gave you, leave a
clearly marked placeholder and ask me for it.
```

## Let Claude write the prompt

You don't have to be the expert prompter. Claude knows what a strong prompt looks like, so ask it to write or sharpen yours before you commit.

```text
I want a skill that drafts customer success plans. Before we build it, write the
ideal prompt I should give you to define that skill: the context, the inputs,
the output format, and the guardrails you'd want. Then ask me anything you're
still missing.
```

## Iterate

Your first prompt is rarely the last. When the output is close but not right, say what's off and let Claude tighten it.

```text
That's close. Make it half the length, drop the intro paragraph, and lead with
the risks instead of the goals.
```
