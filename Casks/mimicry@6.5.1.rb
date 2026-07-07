cask "mimicry@6.5.1" do
  version "6.5.1"
  sha256 "7fce696034685ac4bfa7385a91329b54191ae3c28fd84a385c3d4467fd9fd325"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v6.5.1/Mimicry_6.5.1_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v6.5.1)"
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
