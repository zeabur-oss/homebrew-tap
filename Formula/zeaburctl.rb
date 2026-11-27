# frozen_string_literal: true

# Written by scripts/homebrew.ts in zeabur-oss/zeabur for each release; do not edit.
class Zeaburctl < Formula
  desc "Open Zeabur for any cluster in your kubeconfig"
  homepage "https://oss.zeabur.com/docs/zeabur/"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.3/zeaburctl-v0.3.3-darwin-arm64.tar.gz"
      sha256 "f5d8ab9ec2ca98bbe21a4f9133c6cf6906f53c046ddd38e3f7e337d58d3eb00b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.3/zeaburctl-v0.3.3-linux-amd64.tar.gz"
      sha256 "eb64f2d6e97d88005a67a1218785d15648cd6f915f904d9396eb512d6f2de6dc"
    end

    on_arm do
      url "https://github.com/zeabur-oss/zeabur/releases/download/v0.3.3/zeaburctl-v0.3.3-linux-arm64.tar.gz"
      sha256 "846bbbdc71ec989ca8e610b4e93b1048687a7161c6b22a084ea89862abf973c5"
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
