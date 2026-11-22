# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class ZeaburctlBeta < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.4/zeaburctl-v0.3.0-beta.4-darwin-arm64.tar.gz"
      sha256 "6100adc7ecb90829153377047035ba931f52feaf860f457e6518d4bdeea07e4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.4/zeaburctl-v0.3.0-beta.4-linux-amd64.tar.gz"
      sha256 "ae2c6d9fd68dd4434f1949080b708e10237d857731e51a96c8f59bc2fc4c4b9b"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.4/zeaburctl-v0.3.0-beta.4-linux-arm64.tar.gz"
      sha256 "e6000b385a1231067d5245eeebc44e69a4722e3c084c6c7f9ff7f22c4e68581b"
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
