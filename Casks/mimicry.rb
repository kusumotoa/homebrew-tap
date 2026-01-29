cask "mimicry" do
  version "1.1.3"
  sha256 "17ce6a0ef33fe0108a6746f4ed42587b4e96245a25e2cfddfd1ce8d6c8d0b77b"

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
