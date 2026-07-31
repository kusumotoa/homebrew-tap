cask "fluffdrop" do
  version "1.1.0"
  sha256 :no_check

  url "https://github.com/kusumotoa/fluffdrop-releases/releases/download/v#{version}/FluffDrop_#{version}_aarch64.dmg"
  name "FluffDrop"
  desc "Receive files from iPhone/Android/PC via browser over Wi-Fi"
  homepage "https://github.com/kusumotoa/FluffDrop"

  livecheck do
    url "https://github.com/kusumotoa/fluffdrop-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FluffDrop.app"

  zap trash: [
    "~/Library/Application Support/FluffDrop",
    "~/Library/Preferences/com.kusumoto.FluffDrop.plist",
    "~/Library/Caches/com.kusumoto.FluffDrop",
    "~/Downloads/FluffDrop",
  ]
end
