---
hide:
  - navigation
---

# Build tools

The skill lifecycle commands need one base tool, plus one optional extra.

## Python 3 (required)

Every `/kong-skill-*` command runs a small Python helper, so Python 3 has to be on your PATH. It almost always already is.

**Check** (skip if it prints a version):

```bash
python3 --version
```

**Install** if it's missing:

=== "macOS"

    ```bash
    brew install python
    ```

=== "Ubuntu / Debian"

    ```bash
    sudo apt update
    sudo apt install python3 -y
    ```

## just (optional, for preview only)

[just](https://just.systems/) is a command runner. Only the optional preview step (`/kong-skill-test`) uses it, to render your catalog page locally with `just docs-build`. Skip this unless you plan to preview.

=== "macOS"

    ```bash
    brew install just
    ```

=== "Ubuntu / Debian"

    No default apt package. See [just.systems](https://just.systems/) for the prebuilt binary or install script.

Next: [Configure git](configure-git.md).
