cask "appforceps" do
  version "2.0.3"
  sha256 "c8208938ce6e34cb475c5d4138d1875f40b06dbbd22aed622bc8c2ea6ffad0dc"

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

  zap trash: [
    "~/Library/Application Support/com.kusumoto.appforceps",
    "~/Library/Preferences/com.kusumoto.appforceps.plist",
    "~/Library/Caches/com.kusumoto.appforceps",
    "~/Library/Caches/AppForceps",
  ]
end
