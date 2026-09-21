cask "statusarc" do
  version "1.4.1"
  sha256 "2714b07a96fa82e907052704029e6a387e27a9e76d56012ed31663958c4b808b"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
