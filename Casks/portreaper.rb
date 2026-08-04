cask "portreaper" do
  version "1.0.3"
  sha256 "e4be9f47c0fd2deaab5ff9d55ce4a50a790b79da56b99fc9eda838c8d32ec55b"

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
