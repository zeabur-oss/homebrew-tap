# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class ZeaburctlBeta < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.2/zeaburctl-v0.3.0-beta.2-darwin-arm64.tar.gz"
      sha256 "5b3b309fa8d15af8c4eb60c530310ee779340fadc25f9dd86308c02623c3c41e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.2/zeaburctl-v0.3.0-beta.2-linux-amd64.tar.gz"
      sha256 "7f928fbda32d141df2a17dbe69c6633232a31ecad93e0ccf3296bb11c4a392b7"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.2/zeaburctl-v0.3.0-beta.2-linux-arm64.tar.gz"
      sha256 "e156c0896219f7cba673f7ee44426431ae85a33f6109d9c91cc52eb1b996def6"
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
