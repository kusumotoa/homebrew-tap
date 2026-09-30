cask "mimicry@7.4.6" do
  version "7.4.6"
  sha256 "cfec2f662d4fb16a83e89b79f0b36ac2b9b84e55b4ece27cb9841df230fb1a94"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.4.6/Mimicry_7.4.6_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.4.6)"
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
