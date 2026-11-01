cask "launchd-manager" do
  version "0.7.6"
  sha256 "1490dde617d57302d315f30e6c39cb7508b514649670d62de7d69feac62bc85f"

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
