cask "localio" do
  version "0.2.4"
  sha256 "2eb970b70ac6182f29ae2ad2491dbb5b6551d82a94f67fd9ef6f19b98b417529"

  url "https://github.com/kusumotoa/localio-releases/releases/download/v#{version}/Localio_#{version}_aarch64.dmg"
  name "Localio"
  desc "macOS menu bar app to run scripts via HTTP requests"
  homepage "https://github.com/kusumotoa/Localio"

  livecheck do
    url "https://github.com/kusumotoa/localio-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Localio.app"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.localio.app",
    "~/Library/Preferences/com.kusumoto.localio.app.plist",
    "~/Library/Caches/com.kusumoto.localio.app",
  ]
end
