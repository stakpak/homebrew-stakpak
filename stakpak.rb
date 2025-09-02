class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.36"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.36/stakpak-darwin-aarch64.tar.gz"
      sha256 "10b5435a433cb799eb061d0e93c50604bdcdfae9a32bd0cdbadc74136d7f59d3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.36/stakpak-darwin-x86_64.tar.gz"
      sha256 "d2ea97decb2658bba6c4865e97c9a9b55f515d712ab7fe31c1bb3f0e5232d7b2"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.36/stakpak-linux-aarch64.tar.gz"
      sha256 "24e45cbf168b3b8c5d70a218c0aadc9cd8c7f6e7d7c9dfb1b4ef99b412a4411e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.36/stakpak-linux-x86_64.tar.gz"
      sha256 "685cb4d60e954007888c45abb5fd2c10f7a4f67456534d08fafb5b7c050655a8"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
