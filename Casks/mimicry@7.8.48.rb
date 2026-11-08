cask "mimicry@7.8.48" do
  version "7.8.48"
  sha256 "e839c892748f66d57bc6d9f5a86c86f7aad3677cd501070b9f4fe57d38746dfc"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.48/Mimicry_7.8.48_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.48)"
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
