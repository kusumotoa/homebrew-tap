cask "mimicry@7.20.0" do
  version "7.20.0"
  sha256 "c9548aaebde60e854d97cda76f6eda130476192865b95ca735d7bdacc1af7977"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.20.0/Mimicry_7.20.0_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.20.0)"
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
