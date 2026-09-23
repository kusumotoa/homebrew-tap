cask "mimicry@7.4.2" do
  version "7.4.2"
  sha256 "2c77d4f114c9fb93001bd707e80897bf0220dc78a11bde9fea42e9aa9f99e124"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.4.2/Mimicry_7.4.2_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.4.2)"
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
