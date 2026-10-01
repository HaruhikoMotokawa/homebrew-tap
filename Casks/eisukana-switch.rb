cask "eisukana-switch" do
  version "0.1.0"
  sha256 "9e797457f6cd2695d9e368c4ec86df9e8cc5c8bcca439ea2f021481f968c1f7e"

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
