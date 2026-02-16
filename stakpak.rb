class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.44"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.44/stakpak-darwin-aarch64.tar.gz"
      sha256 "49cd61a35cf1add50a20bfbcfd2d7e85b0db89a89c9b664f77e50f8d5880715a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.44/stakpak-darwin-x86_64.tar.gz"
      sha256 "aab4fe74bcdde73faa8c96278d3cb4bb2aae2b19d89d002ad73dc9294ff156d9"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.44/stakpak-linux-aarch64.tar.gz"
      sha256 "1296d3c512d44c261c9d1eebc8269fd58b3b372cd907e0133f47774e5b3d434d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.44/stakpak-linux-x86_64.tar.gz"
      sha256 "964c66a3310061d5c1fc01142b669290c869fe943f459588eee15485936272f7"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
