cask "mimicry" do
  version "5.9.5"
  sha256 "96f88eedd07e0bf1b90fbcb4ff2d930972fed0d919182c06c2166b20d2f9a68b"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v#{version}/Mimicry_#{version}_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development"
  homepage "https://github.com/kusumotoa/Mimicry"

  livecheck do
    url "https://github.com/kusumotoa/mimicry-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/MacOS/Mimicry", target: "mimicry"

  zap trash: [
    "~/Library/Application Support/mimicry",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Caches/com.mimicry.app",
  ]
end
