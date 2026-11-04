cask "portreaper" do
  version "1.0.4"
  sha256 "a4244e80669cacee05c868be48d6adfa9f1d7321d82d2cbce5f6682ea223cdca"

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
