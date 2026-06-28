cask "mimicry@6.4.13" do
  version "6.4.13"
  sha256 "6aa4e6d85b54407563a7eb3cd91a434acbdafe494fec7d7ab7d1c55cc7990cba"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v6.4.13/Mimicry_6.4.13_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v6.4.13)"
  homepage "https://github.com/kusumotoa/Mimicry"

  conflicts_with cask: "mimicry"
  depends_on macos: ">= :sequoia"

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
