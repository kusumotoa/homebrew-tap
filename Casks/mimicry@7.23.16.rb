cask "mimicry@7.23.16" do
  version "7.23.16"
  sha256 "cfb39ad76960597c1a0aa92bcc2a8ec36523c1a114d162fa45ddbf39f51821d8"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.23.16/Mimicry_7.23.16_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.23.16)"
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
