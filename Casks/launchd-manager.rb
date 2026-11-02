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

  # アプリの要件（tauri.conf.json の minimumSystemVersion 14.0・Apple Silicon のみ）に合わせる
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "launchd Manager.app"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.launchd-manager",
    "~/Library/Caches/com.kusumoto.launchd-manager",
    "~/Library/Preferences/com.kusumoto.launchd-manager.plist",
  ]
end
