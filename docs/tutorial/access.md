---
hide:
  - navigation
---

# Get access

The marketplace lives in the **Kong/kong-skills** repo, and the docs site is private. You need two things in place first, or cloning and pushing will fail.

## 1. Log into GitHub (web)

Open [github.com](https://github.com) in your browser and sign in. Browser login matters here, not just the CLI.

## 2. Authorise the GitHub CLI for Kong SSO

You logged in over **HTTPS** with `gh auth login` during setup, so access runs through the GitHub CLI's token, not an SSH key. That token has to be SSO-authorized for the **Kong** org, or `git clone` and `git push` against Kong repos are rejected.

- Most of the time the `gh auth login` browser flow already prompted you to **Authorize** for the Kong organization. If you clicked through it, you're done.
- If you're not sure, go to [github.com/settings/connections/applications](https://github.com/settings/connections/applications), open **GitHub CLI**, and under **Organization access** make sure **Kong** shows a green check (click **Authorize** / **Grant** if it doesn't).

!!! warning "Write access to the repo, not just org membership"
    These are two separate things. SSO authorization only works if you're a member of the **Kong** GitHub organization. On top of that, you need **write (push) access to `kong-skills`** so you can push your branch later; plain org membership doesn't grant it. A repo admin adds you to a team with write access or as a collaborator. If you're missing either, ask the instructor before going further.

!!! check "Quick test"
    Once authorised, this site should open without a login wall:
    **<https://cuddly-adventure-1qg47ep.pages.github.io>**
    If it bounces you to a GitHub login screen, your SSO authorization isn't done yet.

Next: [Install the tools](install.md)
