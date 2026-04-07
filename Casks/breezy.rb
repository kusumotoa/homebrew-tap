cask "breezy" do
  version "0.4.5"
  sha256 :no_check

  url "https://github.com/kusumotoa/breezy-releases/releases/download/v#{version}/Breezy_#{version}_aarch64.dmg"
  name "Breezy"
  desc "macOS menu bar app to sync directories between Macs via iCloud"
  homepage "https://github.com/kusumotoa/Breezy"

  livecheck do
    url "https://github.com/kusumotoa/breezy-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Breezy.app"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.breezy",
    "~/Library/Preferences/com.kusumoto.breezy.plist",
    "~/Library/Caches/com.kusumoto.breezy",
  ]
end
