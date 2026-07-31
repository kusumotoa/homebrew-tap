cask "mimicry@6.4.14" do
  version "6.4.14"
  sha256 "de838f705cd2ff59ec104cf05bc133ebbea4f0886d182e430826988fdf3d137f"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v6.4.14/Mimicry_6.4.14_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v6.4.14)"
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
