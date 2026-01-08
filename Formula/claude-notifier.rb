class ClaudeNotifier < Formula
  desc "macOS notification tool with action buttons for CLI"
  homepage "https://github.com/kusumotoa/claude-notifier"
  url "https://github.com/kusumotoa/claude-notifier/releases/download/v1.0.0/claude-notifier.zip"
  sha256 "e6cf4bdb987091039cbe3f306e673eab82de05fd18b0f2c6fa9b5c1f3a514d03"
  version "1.0.0"
  license "MIT"

  depends_on :macos

  def install
    # Install the .app bundle to prefix
    prefix.install "claude-notifier.app"

    # Create a wrapper script in bin that calls the binary inside the .app
    (bin/"claude-notifier").write <<~EOS
      #!/bin/bash
      exec "#{prefix}/claude-notifier.app/Contents/MacOS/claude-notifier" "$@"
    EOS
  end

  def caveats
    <<~EOS
      claude-notifier requires notification permissions.

      On first run, macOS may ask you to allow notifications.
      You can manage this in System Settings > Notifications.

      Usage:
        claude-notifier -message "Hello" -actions "Yes,No" -timeout 30
    EOS
  end

  test do
    assert_match "claude-notifier", shell_output("#{bin}/claude-notifier -help")
  end
end
