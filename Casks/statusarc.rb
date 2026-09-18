cask "statusarc" do
  version "1.3.2"
  sha256 "81258cd3fd349629a029c70748b9fc4f5db9e7d100e7bc60a45799635f50a2f6"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
