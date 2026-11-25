# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class Zeaburctl < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.2/zeaburctl-v0.3.2-darwin-arm64.tar.gz"
      sha256 "6d1398d8348a2066d60a6533551ce29493c0eb603d1e0c0fbca93a69ca542319"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.2/zeaburctl-v0.3.2-linux-amd64.tar.gz"
      sha256 "154def695e40d51c9f89e73bba35c650aa98549a3eb3b32e142746feb91f18c5"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.2/zeaburctl-v0.3.2-linux-arm64.tar.gz"
      sha256 "878bc7790100403590d2f9c3eb48575aebf3a3f54dac51d4611300baa6310f6e"
    end
  end

  conflicts_with "zeabur-oss/tap/zeaburctl-beta", because: "both install `zeaburctl`"

  def install
    bin.install "zeaburctl"
  end

  test do
    assert_equal "zeaburctl #{version}", shell_output("#{bin}/zeaburctl --version").strip
  end
end
