cask "mimicry@6.4.9" do
  version "6.4.9"
  sha256 "eb0bc8c9fc3c9335cb4870bc206a3c8750c876ebf7757f7f96af8dd9dfd29620"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v6.4.9/Mimicry_6.4.9_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v6.4.9)"
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
