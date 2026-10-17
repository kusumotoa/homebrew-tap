cask "mimicry@7.4.13" do
  version "7.4.13"
  sha256 "2218fe5364c7c487fb6d7ef214f28f66c0cf620ec2bcf0d8cbe2f780252b57ed"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.4.13/Mimicry_7.4.13_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.4.13)"
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
