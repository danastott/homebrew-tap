cask "splashmenubar" do
  version "1.0.8"
  sha256 "cfd7542619e12fbb8c1e0c37876eec88ddf870df27f6cd1c81949a2fe2c90b76"

  url "https://github.com/danastott/splashmenubar/releases/download/v#{version}/SplashMenuBar-#{version}.zip"
  name "Splash Menu Bar"
  desc "Menu bar app for Inco AI's splash local inference engine"
  homepage "https://github.com/danastott/splashmenubar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "SplashMenuBar.app"

  uninstall quit: "com.danastott.splashmenubar"

  zap trash: [
    "~/.splashmenubar.json",
    "~/.splashmenubar.json.bak",
  ]
end
