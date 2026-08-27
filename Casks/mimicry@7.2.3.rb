cask "mimicry@7.2.3" do
  version "7.2.3"
  sha256 "c38cc4f481213c2dbf7d2520f1e932e1fc1d69dc8254ed15bb7b35abf922f303"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.2.3/Mimicry_7.2.3_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.2.3)"
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
