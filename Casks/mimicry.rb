cask "mimicry" do
  version "2.0.0"
  sha256 "036b29f52f0eab4ac7fdc3a06971c57016a43ea88426ab12411b03b9ff195956"

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
