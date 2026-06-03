---
hide:
  - navigation
---

# You're done

Your PR is open with the quality-bar checklist filled in. From here:

- The scanners run automatically, and a review is required before merge.
- A reviewer will leave comments. You don't open a new PR to address them: make the change locally, then `git add -A`, `git commit`, and `git push` to the same branch. The PR updates in place and the checks re-run. Repeat until it's approved.
- Once it merges, your skill shows up in the marketplace catalog and anyone can install it:

```text
/plugin install <skill-name>@kong-skills
```

For the running example that's `/plugin install success-plan@kong-skills`.

That's a skill, built and shipped. 🎉

Questions or bugs: [github.com/Kong/kong-skills/issues](https://github.com/Kong/kong-skills/issues)
