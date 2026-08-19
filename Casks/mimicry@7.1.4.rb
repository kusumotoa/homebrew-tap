cask "mimicry@7.1.4" do
  version "7.1.4"
  sha256 "3952d10608ffc00e50d53f7648d3322bda98e6c28a3e36656fe1fb7642b58ae3"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.1.4/Mimicry_7.1.4_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.1.4)"
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
