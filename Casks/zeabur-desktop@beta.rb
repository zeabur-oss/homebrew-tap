# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
cask "zeabur-desktop@beta" do
  version "0.3.0-beta.3"
  sha256 "bc66af3bf8e671647f9391bee35b25b52209c56de8909e64f373027305bc05a8"

  url "https://github.com/zeabur-oss/zeabur/releases/download/v#{version}/zeabur-desktop-v#{version}-darwin-arm64.dmg"
  name "Zeabur Desktop"
  desc "Open Zeabur for the clusters in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"

  # The app updates itself, so brew upgrade leaves it to the app unless asked with --greedy.
  auto_updates true
  conflicts_with cask: "zeabur-desktop"
  depends_on arch: :arm64
  depends_on :macos

  app "Zeabur.app"

  zap trash: [
    "~/Library/Application Support/com.zeabur.oss.desktop",
    "~/Library/Caches/com.zeabur.oss.desktop",
    "~/Library/WebKit/com.zeabur.oss.desktop",
  ]
end
