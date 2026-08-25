cask "appforceps" do
  version "2.0.23"
  sha256 "7d9017b07a790ddcd5455f27614db4323482cd3db5971552e595f25afa6ab4b7"

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
