cask "mimicry@7.8.0" do
  version "7.8.0"
  sha256 "19a095d0369aa81a5fef2dc8fbda5f00eda2dff1b34fc806de595628a3364ddb"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.0/Mimicry_7.8.0_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.0)"
  homepage "https://github.com/kusumotoa/Mimicry"

  conflicts_with cask: "mimicry"
  depends_on macos: :sequoia

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/MacOS/Mimicry", target: "mimicry"

  zap trash: [
    "~/Library/Application Support/com.mimicry.app",
    "~/Library/Application Support/com.mimicry.proxy",
    "~/Library/Application Support/mimicry",
    "~/Library/Caches/com.mimicry.app",
    "~/Library/Preferences/com.mimicry.app.plist",
  ]
end
