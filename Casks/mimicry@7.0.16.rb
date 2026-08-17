cask "mimicry@7.0.16" do
  version "7.0.16"
  sha256 "665df4055d1e9cb7ce81cb759f90e4cc0a584ca01cdb01e922fd962b3b40b8dd"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.0.16/Mimicry_7.0.16_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.0.16)"
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
