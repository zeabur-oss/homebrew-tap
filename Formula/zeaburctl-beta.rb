# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class ZeaburctlBeta < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.1/zeaburctl-v0.3.0-beta.1-darwin-arm64.tar.gz"
      sha256 "39424acf5ba4c06b709ccf33580397eeb7e99c23b4ca1de624994acf5d37dc78"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.1/zeaburctl-v0.3.0-beta.1-linux-amd64.tar.gz"
      sha256 "509aef9a1ceda09d6bf73a294aa337d1df66f891ec460004800e6209e4371c7e"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0-beta.1/zeaburctl-v0.3.0-beta.1-linux-arm64.tar.gz"
      sha256 "d4447a16e01e78be42699c13b576d254f987fa4b5c185a99219e60bd532dc218"
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
