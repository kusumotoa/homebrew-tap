cask "mimicry" do
  version "7.8.59"
  sha256 "c82d73f9f422aa4935b1f3c6d7f22d261cb14e4abd3e3706113baf509dcc621b"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v#{version}/Mimicry_#{version}_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development"
  homepage "https://github.com/kusumotoa/Mimicry"

  livecheck do
    url "https://github.com/kusumotoa/mimicry-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/MacOS/Mimicry", target: "mimicry"

  zap trash: [
    "~/.mimicry",
    "~/Library/Application Support/com.mimicry.app",
    "~/Library/Application Support/com.mimicry.proxy",
    "~/Library/Application Support/mimicry",
    "~/Library/Caches/com.mimicry.app",
    "~/Library/Caches/com.mimicry.proxy",
    "~/Library/HTTPStorages/com.mimicry.proxy",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Preferences/com.mimicry.proxy.plist",
    "~/Library/Saved Application State/com.mimicry.proxy.savedState",
    "~/Library/WebKit/com.mimicry.proxy",
  ]
end
