cask "launchd-manager" do
  version "0.7.8"
  sha256 "4abf94fc85b5ebd71fa4eab98a5e2dd513da892f7d6ba57884660442f2dec922"

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
