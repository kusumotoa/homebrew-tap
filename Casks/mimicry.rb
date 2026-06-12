cask "mimicry" do
  version "6.3.0"
  sha256 "b4320874e3e35f05cfb056a3003e4ee878537862c86044a55b7ab8045878800f"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v#{version}/Mimicry_#{version}_universal.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development"
  homepage "https://github.com/kusumotoa/Mimicry"

  livecheck do
    url "https://github.com/kusumotoa/mimicry-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/MacOS/Mimicry", target: "mimicry"

  zap trash: [
    "~/Library/Application Support/mimicry",
    "~/Library/Preferences/com.mimicry.app.plist",
    "~/Library/Caches/com.mimicry.app",
  ]
end
