class X2socks < Formula
  desc "Local SOCKS5 manager based on Xray Core"
  homepage "https://github.com/xjetry/xray2socks"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.1/x2socks-darwin-amd64"
      sha256 "0d80e9e964bc27b199410370122409d8170de6bfc475ccfe081dab8b29dd1cf9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.1/x2socks-darwin-arm64"
      sha256 "363d15e8adc4b7137c4e25d77d5091803ac5471b85c2a9c466908f4e666df71b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.1/x2socks-linux-amd64"
      sha256 "fa829677b3aded6fbce903ca0382dc16f5c1f7ccdf08d66538b7da9ea9b10d40"
    end
    if Hardware::CPU.arm?
      url "https://github.com/xjetry/xray2socks/releases/download/v0.3.1/x2socks-linux-arm64"
      sha256 "17573f0f5380c10dce90ccc6b317b8eabe42030e36bb88096d6f0c701be3c14d"
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
