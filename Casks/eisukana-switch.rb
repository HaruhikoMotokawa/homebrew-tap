cask "eisukana-switch" do
  version "0.1.0-beta.1"
  sha256 "fd4d6b1ed770aa0f97770b61690858d8a045a00f67bf22e37af1c89e1af0a610"

  url "https://github.com/HaruhikoMotokawa/eisukana-switch/releases/download/v#{version}/EisuKanaSwitch-#{version}.zip"
  name "EisuKana Switch"
  desc "Switch between Eisu and Kana with the left and right Command keys"
  homepage "https://github.com/HaruhikoMotokawa/eisukana-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "EisuKanaSwitch.app"

  uninstall quit: "io.github.haruhikomotokawa.EisuKanaSwitch"

  zap trash: [
    "~/Library/Application Scripts/io.github.haruhikomotokawa.EisuKanaSwitch",
    "~/Library/Containers/io.github.haruhikomotokawa.EisuKanaSwitch",
  ]
end
