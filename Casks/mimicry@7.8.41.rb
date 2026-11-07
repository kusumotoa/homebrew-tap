cask "mimicry@7.8.41" do
  version "7.8.41"
  sha256 "7a5c8f33f7f1d5a542ab0bd254b3ed56ef1f7bd7818b4ec95c448314f0317a72"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.41/Mimicry_7.8.41_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.41)"
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
