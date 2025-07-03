class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.119"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.119/stakpak-darwin-aarch64.tar.gz"
      sha256 "6bb6b71d73c336a7495a6000d83339c671d96c4424d10b97aaf99bfb1feffcf0"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.119/stakpak-darwin-x86_64.tar.gz"
      sha256 "2cece84cb16a92da08e619a4678d8a0b5036f31ad3141d40cdf2d2936a67520d"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.119/stakpak-linux-x86_64.tar.gz"
    sha256 "2d71ea371f2beee5990cd2c79d6304d22da6b9457da657f36b895bf8453486f6"
  end
  
  def install
    bin.install "stakpak"
  end
end
