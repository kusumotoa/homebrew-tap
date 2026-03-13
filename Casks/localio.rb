cask "localio" do
  version "0.2.0"
  sha256 "caf5f5cd3e273774d241c87d6ea84a639fab15e35c6a0057680174e5053ccc5c"

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
