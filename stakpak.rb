class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.107"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.107/stakpak-darwin-aarch64.tar.gz"
      sha256 "2852d387d3136ad8508f2dc68547af702c231165abcaa89ca112f2569abf8f6a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.107/stakpak-darwin-x86_64.tar.gz"
      sha256 "1193a5adda1047c9c60797d37e319a610b3858ef64fbb522625cf8c3e0797a74"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.107/stakpak-linux-x86_64.tar.gz"
    sha256 "ad6699f853876c1b099ad1561df0544cd442f043990c493b209d1022feb9dd11"
  end
  
  def install
    bin.install "stakpak"
  end
end
