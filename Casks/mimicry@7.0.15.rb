cask "mimicry@7.0.15" do
  version "7.0.15"
  sha256 "aec6e89e01fba3aaf02fd937c0caf651fe41fb0e7e5e7dc641702167a6c789c3"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.0.15/Mimicry_7.0.15_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.0.15)"
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
