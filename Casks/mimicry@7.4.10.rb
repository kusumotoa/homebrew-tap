cask "mimicry@7.4.10" do
  version "7.4.10"
  sha256 "80dbf31f4ab2b49455a8f2191f9a3ad421b4dd8b69465173c6d6db58a65f5c11"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.4.10/Mimicry_7.4.10_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.4.10)"
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
