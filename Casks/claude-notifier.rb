cask "claude-notifier" do
  version "1.0.5"
  sha256 "bfc5b68c8f77d7e05e7f3f9f78df9bec17af654115d1773693a82b0dd0a36f47"

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
