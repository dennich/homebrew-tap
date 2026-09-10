cask "statusarc" do
  version "1.0.0"
  sha256 "b41e2d0de8155ebad3bfe24bdbd26cd918425815adc8dc8ab7e462ec588d1447"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
