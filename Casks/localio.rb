cask "localio" do
  version "0.2.1"
  sha256 "d5b72865f03a69f658dd1431404375a91b44932a4772037b89b46a3aa6fd1074"

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
