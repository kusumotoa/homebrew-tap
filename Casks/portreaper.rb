cask "portreaper" do
  version "1.0.5"
  sha256 "4d5525ab4b63639913a35de0472a0936374deb9a66404632f40fd1f333f35bdf"

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
