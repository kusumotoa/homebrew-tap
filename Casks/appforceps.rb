cask "appforceps" do
  version "2.0.16"
  sha256 "07a8ac7278129e3f1203044da8e14472e3fbb22e3bbdc28b7573f4339e0e7ba8"

  url "https://github.com/kusumotoa/AppForceps-releases/releases/download/v#{version}/AppForceps_#{version}_aarch64.dmg"
  name "AppForceps"
  desc "iOS / Android App Data Editor (Simulator/Emulator + 実機)"
  homepage "https://github.com/kusumotoa/AppForceps-releases"

  livecheck do
    url "https://github.com/kusumotoa/AppForceps-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "AppForceps.app"
  binary "#{appdir}/AppForceps.app/Contents/MacOS/appforceps", target: "appforceps"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.appforceps",
    "~/Library/Preferences/com.kusumoto.appforceps.plist",
    "~/Library/Caches/com.kusumoto.appforceps",
    "~/Library/Caches/AppForceps",
  ]
end
