---
hide:
  - navigation
---

# Get access

The marketplace lives in the **Kong/kong-skills** repo, and the docs site is private. You won't push to that repo directly; you'll fork it and open a pull request from your fork. You need two things in place first, or forking and cloning will fail.

## 1. Log into GitHub (web)

Open [github.com](https://github.com) in your browser and sign in. Browser login matters here, not just the CLI.

## 2. Authorise the GitHub CLI for Kong SSO

You logged in over **HTTPS** with `gh auth login` during setup, so access runs through the GitHub CLI's token, not an SSH key. That token has to be SSO-authorized for the **Kong** org, or forking and cloning the private Kong repo are rejected.

- Most of the time the `gh auth login` browser flow already prompted you to **Authorize** for the Kong organization. If you clicked through it, you're done.
- If you're not sure, go to [github.com/settings/connections/applications](https://github.com/settings/connections/applications), open **GitHub CLI**, and under **Organization access** make sure **Kong** shows a green check (click **Authorize** / **Grant** if it doesn't).

!!! info "You also need to be in the Kong org"
    SSO authorization only works if you're already a member of the **Kong** GitHub organization. If you're not, ask the instructor to add you before going further.

!!! check "Quick test"
    Once authorised, this site should open without a login wall:
    **<https://cuddly-adventure-1qg47ep.pages.github.io>**
    If it bounces you to a GitHub login screen, your SSO authorization isn't done yet.

Next: [Install the tools](install.md)
