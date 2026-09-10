cask "statusarc" do
  version "1.0.1"
  sha256 "db17a472bb1c93f0870ae5fbe5866f7555a6975294cc67963d0663f6187c1d09"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
