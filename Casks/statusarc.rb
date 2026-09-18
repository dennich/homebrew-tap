cask "statusarc" do
  version "1.3.5"
  sha256 "de315980b93a93b6edb0ef5324c3143681c18d3a46924a678f5ec1011cda27dd"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
