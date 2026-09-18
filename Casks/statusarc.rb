cask "statusarc" do
  version "1.3.3"
  sha256 "77bdbc5bcffc14ab4ef5f1819cff929eaf0c4565e5d2fa8595f47a2fde50cdbe"

  url "https://github.com/dennich/StatusArc/releases/download/v#{version}/StatusArc-#{version}.zip"
  name "StatusArc"
  desc "Compact menu bar status for battery, network, and input source"
  homepage "https://github.com/dennich/StatusArc"

  depends_on macos: :ventura

  app "StatusArc.app"
end
