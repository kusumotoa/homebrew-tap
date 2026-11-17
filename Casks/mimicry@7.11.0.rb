cask "mimicry@7.11.0" do
  version "7.11.0"
  sha256 "afb29ffe18de999719eb4d5f98893f5f4bfa831f17acc2330a9e0883e9533494"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.11.0/Mimicry_7.11.0_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.11.0)"
  homepage "https://github.com/kusumotoa/Mimicry"

  conflicts_with cask: "mimicry"
  depends_on macos: :sequoia

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/MacOS/Mimicry", target: "mimicry"

  zap trash: [
    "~/.mimicry",
    "~/Library/Application Support/com.mimicry.app",
    "~/Library/Application Support/com.mimicry.proxy",
    "~/Library/Application Support/mimicry",
    "~/Library/Caches/com.mimicry.app",
    "~/Library/Caches/com.mimicry.proxy",
    "~/Library/HTTPStorages/com.mimicry.proxy",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Preferences/com.mimicry.proxy.plist",
    "~/Library/Saved Application State/com.mimicry.proxy.savedState",
    "~/Library/WebKit/com.mimicry.proxy",
  ]
end
