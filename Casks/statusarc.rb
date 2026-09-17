cask "statusarc" do
  version "1.3.0"
  sha256 "b963912ce28e1070e3b8680c4db5024100e3e1a1b5a802801860041619dc07ef"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
