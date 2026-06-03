---
hide:
  - navigation
---

# Homebrew

!!! note "macOS only"
    Ubuntu / Debian users skip this page; `apt` is already your package manager. Go to [git](git.md).

The package manager we use to install git and gh on macOS.

**Check** (skip if it prints a version):

```bash
brew --version
```

**Install:**

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After it finishes, load brew into your current shell:

=== "Apple Silicon"

    ```bash
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```

=== "Intel"

    ```bash
    eval "$(/usr/local/bin/brew shellenv)"
    ```

Next: [git](git.md).
