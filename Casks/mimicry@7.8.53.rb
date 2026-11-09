cask "mimicry@7.8.53" do
  version "7.8.53"
  sha256 "b7b750fa3fb75d6f22d44c84c9ae1c44af550ec0f96340f1fa6b561b70016cdb"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.53/Mimicry_7.8.53_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.53)"
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
