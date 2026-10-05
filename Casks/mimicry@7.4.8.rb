cask "mimicry@7.4.8" do
  version "7.4.8"
  sha256 "05f0b7f8e932e4fbbb68a743675bb11183355e69655cfc7c978d28595ffabc8b"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.4.8/Mimicry_7.4.8_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.4.8)"
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
