cask "appforceps" do
  version "2.0.42"
  sha256 "67eb3123bb0d50a434ce6845d82cb0728e5f095a9e090d3af454d0be97a5017c"

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
    "~/Library/Application Support/com.kusumoto.appforceps",
    "~/Library/Preferences/com.kusumoto.appforceps.plist",
    "~/Library/Caches/com.kusumoto.appforceps",
    "~/Library/Caches/AppForceps",
  ]
end
