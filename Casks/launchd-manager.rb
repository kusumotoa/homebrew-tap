cask "launchd-manager" do
  version "0.6.0"
  sha256 "7c0a87e95348fcf55c987eb0f28c007e8b4a8740fe30b43f757702709caf5d47"

  url "https://github.com/kusumotoa/launchd-manager-releases/releases/download/v#{version}/launchd.Manager_#{version}_aarch64.dmg"
  name "launchd Manager"
  desc "macOS launchd Agent Manager"
  homepage "https://github.com/kusumotoa/launchd-manager"

  livecheck do
    url "https://github.com/kusumotoa/launchd-manager-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "launchd Manager.app"

  zap trash: [
    "~/Library/Application Support/launchd-manager",
    "~/Library/Preferences/com.kusumoto.launchd-manager.plist",
    "~/Library/Caches/com.kusumoto.launchd-manager",
  ]
end
