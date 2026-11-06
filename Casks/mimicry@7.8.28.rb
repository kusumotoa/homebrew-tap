cask "mimicry@7.8.28" do
  version "7.8.28"
  sha256 "95bf8e89fd3aef7b6682b38a3e6d66aad2620316c4b376da3d0b80cb01425992"

  url "https://github.com/kusumotoa/mimicry-releases/releases/download/v7.8.28/Mimicry_7.8.28_aarch64.dmg"
  name "Mimicry"
  desc "HTTP/HTTPS proxy & mock tool for iOS/Android development (pinned to v7.8.28)"
  homepage "https://github.com/kusumotoa/Mimicry"

  conflicts_with cask: "mimicry"
  depends_on macos: :sequoia

  app "Mimicry.app"
  binary "#{appdir}/Mimicry.app/Contents/MacOS/Mimicry", target: "mimicry"

  zap trash: [
    "~/Library/Application Support/com.mimicry.app",
    "~/Library/Application Support/com.mimicry.proxy",
    "~/Library/Application Support/mimicry",
    "~/Library/Caches/com.mimicry.app",
    "~/Library/Preferences/com.mimicry.app.plist",
  ]
end
