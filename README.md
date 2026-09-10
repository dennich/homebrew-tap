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

The workflow runs only when explicitly dispatched. The normal StatusArc release
script dispatches it from the maintainer's Mac using the maintainer's existing
GitHub CLI authentication, waits for it, and verifies the generated cask version.

No cross-repository PAT, GitHub App key, shared secret, or persistent credential
is stored in either repository for this handoff. Once the workflow starts, it
uses this tap repository's own scoped GitHub Actions token to commit cask changes.

For an already-published release, the updater can also be dispatched directly:

```bash
gh workflow run update-statusarc.yml --repo dennich/homebrew-tap --ref main
```

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
directory. Sparkle can update the app from its menu, while the cask remains a
normal versioned cask so `brew upgrade` continues to work as a second update
channel.

Do not replace the SHA-256 with `:no_check`; keeping immutable versioned
artifacts and checksums makes upgrades reproducible.

For official Homebrew submission later, use the current Homebrew Cask
acceptance and audit requirements rather than assuming this third-party tap is
already compliant.
