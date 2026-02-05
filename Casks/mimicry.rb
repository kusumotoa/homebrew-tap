cask "mimicry" do
  version "2.1.5"
  sha256 "b5198a332f19bb3f5f96aeda8c368e292f798af20fc3013be2aa9e8e6c214947"

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
