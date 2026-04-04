cask "mimicry" do
  version "3.1.7"
  sha256 "af90310a24cee069065e21fffad2340857940858a7e44a6282044dbe660bb1d3"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v#{version}/Mimicry_#{version}_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development"
  homepage "https://github.com/kusumotoa/Mimicry"

  livecheck do
    url "https://github.com/kusumotoa/mimicry-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/Resources/mimicry"

  zap trash: [
    "~/Library/Application Support/mimicry",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Caches/com.mimicry.app",
  ]
end
