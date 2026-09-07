class X2socks < Formula
  desc "Local SOCKS5 manager based on Xray Core"
  homepage "https://github.com/xjetry/xray2socks"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.0/x2socks-darwin-amd64"
      sha256 "e927529e374d597bd70540b298744275e27de945ddf65cb7627c96200f02e43f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.0/x2socks-darwin-arm64"
      sha256 "e7097d74b7c757ecfa1d854e21c53d18cba5f1c6b020a7cdad3a4c37e9a770ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.0/x2socks-linux-amd64"
      sha256 "35e0768ba5aed37cae63183f47fe23d8dbfed45a44f7b7f642c2ec1668338937"
    end
    if Hardware::CPU.arm?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.0/x2socks-linux-arm64"
      sha256 "4175069b54fc183908fed1a3489baf876f3e41f969939396a532ab2b859f1917"
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
