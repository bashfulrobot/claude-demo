---
hide:
  - navigation
---

# Get access

The marketplace lives in the **Kong/kong-skills** repo, and the docs site is private. You need two things in place first, or cloning and pushing will fail.

## 1. Log into GitHub (web)

Open [github.com](https://github.com) in your browser and sign in. Browser login matters here, not just the CLI.

## 2. Authorise Kong SSO

Without this, `git clone` and `git push` against the Kong org are rejected.

- Go to [github.com/settings/keys](https://github.com/settings/keys)
- Find the key you use for GitHub, click **Configure SSO**, and **Authorize** it for the **Kong** organization.

!!! check "Quick test"
    Once authorised, this site should open without a login wall:
    **<https://cuddly-adventure-1qg47ep.pages.github.io>**
    If it bounces you to a GitHub login screen, your SSO authorization isn't done yet.

Next: [Install the tools](install.md)
