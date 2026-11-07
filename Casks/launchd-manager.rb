cask "launchd-manager" do
  version "0.7.10"
  sha256 "968a0f47f13e4b25cdb8aa9b99851f800046a5cdac453f7df8d20a8f905b8aa5"

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
