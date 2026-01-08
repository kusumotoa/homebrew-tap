cask "claude-notifier" do
  version "1.0.1"
  sha256 "5888c760228df05a795a4cda75d3174b942876af5274fea46e673e324f1a18ae"

  url "https://github.com/kusumotoa/claude-notifier/releases/download/v#{version}/claude-notifier.zip"
  name "Claude Notifier"
  desc "macOS notification tool with action buttons for CLI"
  homepage "https://github.com/kusumotoa/claude-notifier"

  app "claude-notifier.app"
  binary "#{appdir}/claude-notifier.app/Contents/MacOS/claude-notifier"

  caveats <<~EOS
    claude-notifier requires notification permissions.

    On first run, macOS may ask you to allow notifications.
    You can manage this in System Settings > Notifications.

    If you see a Gatekeeper warning, run:
      xattr -d com.apple.quarantine /Applications/claude-notifier.app

    Or reinstall with:
      brew reinstall --no-quarantine claude-notifier

    Usage:
      claude-notifier -message "Hello" -actions "Yes,No" -timeout 30
  EOS
end
