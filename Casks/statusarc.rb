cask "statusarc" do
  version "1.3.1"
  sha256 "37c6742d52de7a3b49d02446454b579ddc5ba10158d0ae173b9a4d7390825055"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
