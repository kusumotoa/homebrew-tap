cask "mimicry@7.0.2" do
  version "7.0.2"
  sha256 "fa91df900a9176cc253813003e124be2bae3115f9de6f50915e4bfff5b722fb7"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.0.2/Mimicry_7.0.2_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.0.2)"
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
