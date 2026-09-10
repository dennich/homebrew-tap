# Homebrew Tap for StatusArc

This repository is the project-owned Homebrew tap for
[StatusArc](https://github.com/dennich/StatusArc).

## Install

```bash
brew install --cask dennich/tap/statusarc
```

Or:

```bash
brew tap dennich/tap
brew install --cask statusarc
```

## How the cask is maintained

`.github/workflows/update-statusarc.yml` checks the latest public GitHub
Release from `dennich/StatusArc`, downloads the release ZIP,
computes its SHA-256, generates `Casks/statusarc.rb`, and commits changes.

The workflow runs hourly and can also be started manually.

The upstream release asset must be named:

```text
StatusArc-<version>.zip
```

for a tag such as:

```text
v1.0.0
```

## Maintainer notes

The generated cask installs `StatusArc.app` into the normal Homebrew cask app
directory.

Do not replace the SHA-256 with `:no_check`; keeping immutable versioned
artifacts and checksums makes upgrades reproducible.

For official Homebrew submission later, use the current Homebrew Cask
acceptance and audit requirements rather than assuming this third-party tap is
already compliant.
