cask "localio" do
  version "0.2.8"
  sha256 "110fe6f4a33be9ea8cc22b4a659cbb92a4d060e5120bee77abfaecff91485d4f"

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
