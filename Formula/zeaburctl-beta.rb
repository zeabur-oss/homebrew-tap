# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class ZeaburctlBeta < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.3/zeaburctl-v0.3.0-beta.3-darwin-arm64.tar.gz"
      sha256 "cae6ec3b5d003a48815ecc67bf902b08c79ca7aacf49c4dd9c5d515c93c3523c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.3/zeaburctl-v0.3.0-beta.3-linux-amd64.tar.gz"
      sha256 "8566b482d666e48029dac44ad322f1945374fa0b5781d259c30adebbccde520f"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.3/zeaburctl-v0.3.0-beta.3-linux-arm64.tar.gz"
      sha256 "78aa5efd6b917544e882cc9aa7dcfd075eac3abb214eb564f9ea9d96c26a03db"
    end
  end

  conflicts_with "zeabur-oss/tap/zeaburctl", because: "both install `zeaburctl`"

  def install
    bin.install "zeaburctl"
  end

  test do
    assert_equal "zeaburctl #{version}", shell_output("#{bin}/zeaburctl --version").strip
  end
end
