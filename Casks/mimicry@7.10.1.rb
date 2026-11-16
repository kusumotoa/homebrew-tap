cask "mimicry@7.10.1" do
  version "7.10.1"
  sha256 "3eab0c1d9beeba90093625ec31fa8e9a2f305f294c7f6cb7f731da1416492bdf"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.10.1/Mimicry_7.10.1_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.10.1)"
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
