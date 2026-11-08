cask "mimicry@7.8.46" do
  version "7.8.46"
  sha256 "fcc467fca8ae4fb2be408fdfb8dc7beda84aeda96b2adfef71cc917c51d9b1b5"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.46/Mimicry_7.8.46_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.46)"
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
