cask "mimicry@7.8.43" do
  version "7.8.43"
  sha256 "b5cf8b5b4b5dceae5b691f8be18eb5bf7a29126827078cd5a48e2518cceb68dc"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.43/Mimicry_7.8.43_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.43)"
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
