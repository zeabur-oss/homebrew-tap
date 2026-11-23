# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
cask "zeabur-desktop" do
  version "0.3.0"
  sha256 "b448c486593385cf221ced65d5000b2de7b88238a2a4384b1fde505184bbb4f5"

  url "https://github.com/zeabur-oss/zeabur/releases/download/v#{version}/zeabur-desktop-v#{version}-darwin-arm64.dmg"
  name "Zeabur Desktop"
  desc "Open Zeabur for the clusters in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"

  # The app updates itself, so brew upgrade leaves it to the app unless asked with --greedy.
  auto_updates true
  conflicts_with cask: "zeabur-desktop@beta"
  depends_on arch: :arm64
  depends_on :macos

  app "Zeabur.app"

  zap trash: [
    "~/Library/Application Support/com.zeabur.oss.desktop",
    "~/Library/Caches/com.zeabur.oss.desktop",
    "~/Library/WebKit/com.zeabur.oss.desktop",
  ]
end
