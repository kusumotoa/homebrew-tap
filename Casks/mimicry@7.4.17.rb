cask "mimicry@7.4.17" do
  version "7.4.17"
  sha256 "cf0f3086b59b796ac96fc4cddb67d1a2d5126fa093cc9685a0b4d2dc0fb11ed8"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.4.17/Mimicry_7.4.17_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.4.17)"
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
