cask "appforceps" do
  version "2.1.2"
  sha256 "8373a38c6aa600d9e9acc8b78f723162300e4fbeda34889df0a1923f215bd095"

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
