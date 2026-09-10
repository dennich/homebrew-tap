#!/bin/bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 dennich"
  exit 1
fi

OWNER="$1"

if [[ ! "$OWNER" =~ ^[A-Za-z0-9-]+$ ]]; then
  echo "That does not look like a GitHub username or organization."
  exit 1
fi

cd "$(dirname "$0")/.."

grep -RIl --exclude-dir=.git "dennich" . \
  | while IFS= read -r file; do
      perl -0pi -e "s/dennich/\Q${OWNER}\E/g" "$file"
    done

echo "Configured README links for: $OWNER"
echo "The updater workflow itself derives the owner automatically."
