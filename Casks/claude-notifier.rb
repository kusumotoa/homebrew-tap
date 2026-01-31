cask "claude-notifier" do
  version "1.1.0"
  sha256 "e03622349b423631b67829f361cc33f18a9f8e09c6eabbb2049ed0e4dbd516e3"

  url "https://github.com/kusumotoa/claude-notifier/releases/download/v#{version}/claude-notifier.zip"
  name "Claude Notifier"
  desc "macOS notification tool with action buttons for CLI"
  homepage "https://github.com/kusumotoa/claude-notifier"

  app "claude-notifier.app"
  binary "#{appdir}/claude-notifier.app/Contents/MacOS/claude-notifier"

  caveats <<~EOS
    claude-notifier requires notification permissions.
    You can manage this in System Settings > Notifications.

    Usage:
      claude-notifier -message "Hello" -actions "Yes,No" -timeout 30
  EOS
end
