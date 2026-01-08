cask "claude-notifier" do
  version "1.0.6"
  sha256 "d991f9cc2e2def523afa258f83e2e2093f9a35b1ad5ab6ab1f4991c95f3622aa"

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
