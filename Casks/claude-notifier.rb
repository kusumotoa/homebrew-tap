cask "claude-notifier" do
  version "1.0.2"
  sha256 "9ae9079e8e768cf4057ad3aeb5666feda1edee371c5b115dc24dd8dc4137f0e6"

  url "https://github.com/kusumotoa/claude-notifier/releases/download/v#{version}/claude-notifier.zip"
  name "Claude Notifier"
  desc "macOS notification tool with action buttons for CLI"
  homepage "https://github.com/kusumotoa/claude-notifier"

  app "claude-notifier.app"
  binary "#{appdir}/claude-notifier.app/Contents/MacOS/claude-notifier"

  caveats <<~EOS
    On first run, macOS may show a Gatekeeper warning.
    To allow the app:
      System Settings > Privacy & Security > Click "Open Anyway"

    claude-notifier requires notification permissions.
    You can manage this in System Settings > Notifications.

    Usage:
      claude-notifier -message "Hello" -actions "Yes,No" -timeout 30
  EOS
end
