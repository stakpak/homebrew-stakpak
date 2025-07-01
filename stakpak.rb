class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.113"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.113/stakpak-darwin-aarch64.tar.gz"
      sha256 "207b2333a60e40e0267ce49e1c44758df5c8f28c40c2945d9f4756481a434232"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.113/stakpak-darwin-x86_64.tar.gz"
      sha256 "c15a3ca666d4f0d1410eba5b3fba91517e9f86a1bdc6b66dd05b38ae48c1c528"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.113/stakpak-linux-x86_64.tar.gz"
    sha256 "8daae3b3e9e09b3c6c5c63a4f46e1dc05e9c208f7b4b683fd0c4efd2d19f26d6"
  end
  
  def install
    bin.install "stakpak"
  end
end
