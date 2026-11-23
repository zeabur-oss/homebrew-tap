# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class Zeaburctl < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0/zeaburctl-v0.3.0-darwin-arm64.tar.gz"
      sha256 "c16ce5f882e258dee2933814e8c136ccc1a0851d0a5ab8245ec32db87a9ae7ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0/zeaburctl-v0.3.0-linux-amd64.tar.gz"
      sha256 "41b7f7958f47bee2d4453b1a1bb99eb2129a56312fe577a979f04e6be8d5f043"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.0/zeaburctl-v0.3.0-linux-arm64.tar.gz"
      sha256 "7cadd2ba8e9101636d23d0a5342d7fc8605f9c6eccfe957296cb4962748c2199"
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
