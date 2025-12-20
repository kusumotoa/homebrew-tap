cask "mimicry" do
  version "1.0.0"
  sha256 "ddd22a25ed231264c7ad2edf289e9a3b669db8369df1f120fafaea70640c00d5"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v#{version}/Mimicry-#{version}-arm64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development"
  homepage "https://github.com/kusumotoa/Mimicry"

  livecheck do
    url "https://github.com/kusumotoa/mimicry-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Mimicry.app"

  zap trash: [
    "~/Library/Application Support/mimicry",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Caches/com.mimicry.app",
  ]
end
