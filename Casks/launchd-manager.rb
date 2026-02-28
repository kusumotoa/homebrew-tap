cask "launchd-manager" do
  version "0.5.0"
  sha256 "0c065a0a2d1eef728e3334b10343dcfd37f51f46f019cbb6bf3abd8c6e0c5447"

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
