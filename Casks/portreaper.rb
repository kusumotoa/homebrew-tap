cask "portreaper" do
  version "1.0.2"
  sha256 "cad13cbfbc900a4863b9e2c82d7fa21ee93ab2d24c12f1a6e145ef5b3a2a9d70"

  url "https://github.com/kusumotoa/portreaper-releases/releases/download/v#{version}/PortReaper_#{version}_aarch64.dmg"
  name "PortReaper"
  desc "List and kill leftover development servers by listening TCP port"
  homepage "https://github.com/kusumotoa/portreaper-releases"

  livecheck do
    url "https://github.com/kusumotoa/portreaper-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PortReaper.app"

  zap trash: [
    "~/Library/Application Support/com.kusumoto.PortReaper",
    "~/Library/Preferences/com.kusumoto.PortReaper.plist",
    "~/Library/Caches/com.kusumoto.PortReaper",
    "~/Library/Logs/PortReaper",
  ]
end
