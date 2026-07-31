cask "portreaper" do
  version "1.0.1"
  sha256 "a7babbf6775548d715bef7d02aecb15bfd1289d6dc0b884ff23625d112de6040"

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
