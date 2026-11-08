cask "mimicry@7.8.50" do
  version "7.8.50"
  sha256 "ab9278c9f010d0d144b094a7be6707b729fccf04f8bb9aeee3ab6f24ab1b58ab"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.50/Mimicry_7.8.50_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.50)"
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
