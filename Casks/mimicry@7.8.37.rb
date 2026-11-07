cask "mimicry@7.8.37" do
  version "7.8.37"
  sha256 "67047d5513f1cb1a5527105c57fb36b4a4947e44446d6a4cda3b4f51c1cad996"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.37/Mimicry_7.8.37_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.37)"
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
