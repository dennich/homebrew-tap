#!/bin/bash
set -euo pipefail

if [[ $# -ne 4 ]]; then
  echo "Usage: $0 OWNER REPOSITORY VERSION SHA256"
  exit 1
fi

OWNER="$1"
REPOSITORY="$2"
VERSION="$3"
SHA256="$4"

case "$VERSION" in
  v*) VERSION="${VERSION#v}" ;;
esac

if [[ ! "$VERSION" =~ ^[0-9]+([.][0-9A-Za-z-]+)+$ ]]; then
  echo "Invalid version: $VERSION"
  exit 1
fi

if [[ ! "$SHA256" =~ ^[0-9a-fA-F]{64}$ ]]; then
  echo "Invalid SHA-256: $SHA256"
  exit 1
fi

mkdir -p Casks

cat > Casks/statusarc.rb <<EOF
cask "statusarc" do
  version "${VERSION}"
  sha256 "${SHA256}"

  url "https://github.com/${OWNER}/${REPOSITORY}/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/${OWNER}/${REPOSITORY}"

  auto_updates true
  depends_on macos: :ventura

  app "StatusArc.app"
end
EOF

echo "Generated Casks/statusarc.rb for StatusArc ${VERSION}"
