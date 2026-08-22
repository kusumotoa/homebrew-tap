cask "mimicry@7.1.6" do
  version "7.1.6"
  sha256 "132495258773f165b776bfce930d3f024336b19e46d8b8d1ff72b8992691226f"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.1.6/Mimicry_7.1.6_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.1.6)"
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
