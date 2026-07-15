cask "mimicry@7.0.3" do
  version "7.0.3"
  sha256 "0e7f2f0850ed02ee4b6062f4d87e92cfef3d22b4b494a1c405ed94bbc5dc482f"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.0.3/Mimicry_7.0.3_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.0.3)"
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
