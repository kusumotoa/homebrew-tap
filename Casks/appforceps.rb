cask "appforceps" do
  version "2.1.5"
  sha256 "c23190bb7991eb171a94e67b88d4df793b346f752780aeec3121045fa6d4b70b"

  url "https://github.com/kusumotoa/AppForceps-releases/releases/download/v#{version}/AppForceps_#{version}_aarch64.dmg"
  name "AppForceps"
  desc "iOS / Android App Data Editor (Simulator/Emulator + 実機)"
  homepage "https://github.com/kusumotoa/AppForceps-releases"

  livecheck do
    url "https://github.com/kusumotoa/AppForceps-releases/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AppForceps.app"
  binary "#{appdir}/AppForceps.app/Contents/MacOS/appforceps", target: "appforceps"

  zap trash: [
        "~/Library/Application Support/AppForceps",
        "~/Library/Application Support/com.kusumoto.appforceps",
        "~/Library/Caches/AppForceps",
        "~/Library/Caches/com.kusumoto.appforceps",
        "~/Library/HTTPStorages/com.kusumoto.appforceps",
        "~/Library/Logs/AppForceps",
        "~/Library/Preferences/com.kusumoto.appforceps.plist",
        "~/Library/Saved Application State/com.kusumoto.appforceps.savedState",
        "~/Library/WebKit/com.kusumoto.appforceps",
      ],
      rmdir: "/tmp/appforceps"
end
