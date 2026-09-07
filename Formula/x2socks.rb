class X2socks < Formula
  desc "Local SOCKS5 manager based on Xray Core"
  homepage "https://github.com/xjetry/xray2socks"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.4.0/x2socks-darwin-amd64"
      sha256 "f4d2d6af18e6d3a31a168db76af159390c6fc42f60259ff75446f08a9ceefaaa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.4.0/x2socks-darwin-arm64"
      sha256 "41e9241554c9306693ff256f0bf7a4361facabd52a7a5adfe8425bbf527bb2d6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.4.0/x2socks-linux-amd64"
      sha256 "3d8f13854e88937b7e45e1af6e7f52ceaad50ba5c137cc785d5a13c9d4304800"
    end
    if Hardware::CPU.arm?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.4.0/x2socks-linux-arm64"
      sha256 "cc7f37bf4761670692379d5ec49942ab957bb5eb04f9cbf1e66c524e1b35939f"
    end
  end

  def install
    binary = Dir["x2socks-*"].first
    chmod 0755, binary
    bin.install binary => "x2socks"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/x2socks --help 2>&1")
  end
end
