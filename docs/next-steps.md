# Next steps

You're set up. A few extras.

## Working folder

If you skipped it during login, create a place to work:

```bash
mkdir -p ~/kong-dev
```

## Prefer one command?

One-shot scripts that run all the installs and print the login steps. `curl` is built in, so you don't need git yet:

=== "macOS"

    ```bash
    curl -fsSLO https://raw.githubusercontent.com/bashfulrobot/claude-demo/main/install-mac.sh
    chmod +x install-mac.sh && ./install-mac.sh
    ```

=== "Ubuntu / Debian"

    ```bash
    curl -fsSLO https://raw.githubusercontent.com/bashfulrobot/claude-demo/main/install-ubuntu.sh
    chmod +x install-ubuntu.sh && ./install-ubuntu.sh
    ```

## References

- [Claude Code docs](https://code.claude.com/docs/en/overview)
- [GitHub CLI manual](https://cli.github.com/manual/)
- [Homebrew](https://brew.sh/)
