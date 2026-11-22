# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class ZeaburctlBeta < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.5/zeaburctl-v0.3.0-beta.5-darwin-arm64.tar.gz"
      sha256 "a405e2bcefd6b91c39c469480f0e69e3de0e693a9ddcd436866e8a111343a6dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.5/zeaburctl-v0.3.0-beta.5-linux-amd64.tar.gz"
      sha256 "ccdfc72c58b35c085008729fbba909a3cec636d13f42f1421dac432cbad9d2c3"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.5/zeaburctl-v0.3.0-beta.5-linux-arm64.tar.gz"
      sha256 "761b1c5b475943cbbb235638b68f4111585300fa4fa231c0a6bcf6fc52be8f10"
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
