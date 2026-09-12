cask "statusarc" do
  version "1.2.0"
  sha256 "bbd3145ba98d6516696806c4965db0fcbcf858b43d7d9b9539ad5540d3328eb4"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
