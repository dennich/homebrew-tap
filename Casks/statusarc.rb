cask "statusarc" do
  version "1.1.0"
  sha256 "a30626208ab207dd30a1205ffb49090f450cac782af548f2fd41ea698b3dd1e8"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
