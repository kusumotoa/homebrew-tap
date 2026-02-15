cask "mimicry" do
  version "2.1.7"
  sha256 "d4dde92e0acf2f84125aec03a4d46a873bd126becabd79cebbee8732c19efe12"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v#{version}/Mimicry-#{version}-arm64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development"
  homepage "https://github.com/kusumotoa/Mimicry"

  livecheck do
    url "https://github.com/kusumotoa/mimicry-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Mimicry.app"

  zap trash: [
    "~/Library/Application Support/mimicry",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Caches/com.mimicry.app",
  ]
end
