cask "claude-notifier" do
  version "1.0.0"
  sha256 "e6cf4bdb987091039cbe3f306e673eab82de05fd18b0f2c6fa9b5c1f3a514d03"

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

    Usage:
      claude-notifier -message "Hello" -actions "Yes,No" -timeout 30
  EOS
end
