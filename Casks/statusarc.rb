cask "statusarc" do
  version "1.4.0"
  sha256 "29d5bd91051ff8444a52c6b302f54b6dbe256958f6a04a459d2f714dc7bd8df2"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
