cask "appforceps" do
  version "0.1.1"
  sha256 "d976a3b16d91396712e5c81f35d2505008d5ecc59803ff84b35a9ba8184fc3dc"

  url "https://github.com/kusumotoa/AppForceps-releases/releases/download/v#{version}/AppForceps_#{version}_aarch64.dmg"
  name "AppForceps"
  desc "iOS Data Container Editor (Simulator + 実機)"
  homepage "https://github.com/kusumotoa/AppForceps-releases"

  livecheck do
    url "https://github.com/kusumotoa/AppForceps-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "AppForceps.app"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.appforceps",
    "~/Library/Preferences/com.kusumoto.appforceps.plist",
    "~/Library/Caches/com.kusumoto.appforceps",
    "~/Library/Caches/AppForceps",
  ]
end
