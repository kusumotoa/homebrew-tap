cask "localio" do
  version "0.2.7"
  sha256 "db8a335ebf3b00ee7ead9580e433ab1488a8cd4d62ed356b8120ed3c31e840f8"

  url "https://github.com/kusumotoa/localio-releases/releases/download/v#{version}/Localio_#{version}_aarch64.dmg"
  name "Localio"
  desc "macOS menu bar app to run scripts via HTTP requests"
  homepage "https://github.com/kusumotoa/Localio"

  livecheck do
    url "https://github.com/kusumotoa/localio-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Localio.app"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.localio.app",
    "~/Library/Preferences/com.kusumoto.localio.app.plist",
    "~/Library/Caches/com.kusumoto.localio.app",
  ]
end
