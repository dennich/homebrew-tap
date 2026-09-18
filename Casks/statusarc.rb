cask "statusarc" do
  version "1.3.4"
  sha256 "b00827343a2d0b793a454f954e12043bda0df70e6e7b9a117361f277d4c3089f"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
