cask "launchd-manager" do
  version "0.7.9"
  sha256 "c739867d9ff929316b974a72ef18e97c95d23e1ecaf47057c3105e3334827e83"

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
