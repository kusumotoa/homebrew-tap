# Homebrew Tap

Homebrew tap for kusumotoa's tools.

## Usage

```bash
brew tap kusumotoa/tap
```

## Casks

| Cask | Description |
|---|---|
| `breezy` | macOS menu bar app to sync directories between Macs via iCloud |
| `fluffdrop` | macOS menu bar app to receive files from any device via browser |
| `launchd-manager` | macOS launchd Agent Manager |
| `localio` | macOS menu bar app to run scripts via HTTP requests |
| `mimicry` | HTTP/HTTPS proxy & mock tool for iOS/Android development |

```bash
brew install --cask breezy
brew install --cask fluffdrop
brew install --cask launchd-manager
brew install --cask localio
brew install --cask mimicry
```

## Mimicry: 過去バージョンへのダウングレード

特定バージョンを固定インストールしたい場合は versioned cask を利用できます（**v6.5.0 以降のリリースから順次提供**）。

```bash
# 1. 既存インストールを uninstall (conflicts_with のため必須)
brew uninstall --cask mimicry

# 2. データバックアップ (強く推奨)
tar czf ~/mimicry-backup-$(date +%Y%m%d).tgz \
  "$HOME/Library/Application Support/com.mimicry.app"

# 3. 過去版をインストール
brew install --cask kusumotoa/tap/mimicry@6.5.0

# 4. 利用可能な過去版一覧を確認
ls "$(brew --repo kusumotoa/homebrew-tap)"/Casks/mimicry@*.rb

# 5. 最新版に戻す場合
brew uninstall --cask mimicry@6.5.0
brew install --cask kusumotoa/tap/mimicry
```

### 注意事項

- 設定ファイル (`~/Library/Application Support/com.mimicry.app/`) の**下位互換性は保証されません**。新しいバージョンで追加された設定項目は、古いバージョンで読み込んだ際に失われる可能性があります。
- ダウングレード後もアプリ内通知で「最新版あります」と表示される場合があります。固定したまま使う場合はその通知から最新版をインストールしないでください。
- versioned cask は次回リリース (v6.5.0) 以降のみ提供。それ以前のバージョンへの遡及はサポートされません。
