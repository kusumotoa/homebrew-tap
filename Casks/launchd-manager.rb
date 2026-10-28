cask "launchd-manager" do
  version "0.7.5"
  sha256 "8cd261715df42ef8c81034c97592f6643dee796b90a368c819522a768f64ca6b"

  url "https://github.com/kusumotoa/launchd-manager-releases/releases/download/v#{version}/launchd.Manager_#{version}_aarch64.dmg"
  name "launchd Manager"
  desc "macOS launchd Agent Manager"
  homepage "https://github.com/kusumotoa/launchd-manager"

  livecheck do
    url "https://github.com/kusumotoa/launchd-manager-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "launchd Manager.app"

  zap trash: [
    "~/Library/Application Support/launchd-manager",
    "~/Library/Preferences/com.kusumoto.launchd-manager.plist",
    "~/Library/Caches/com.kusumoto.launchd-manager",
  ]
end
