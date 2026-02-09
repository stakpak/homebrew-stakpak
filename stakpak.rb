class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.31"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.31/stakpak-darwin-aarch64.tar.gz"
      sha256 "3f7f603d3877a32870da2ac391e23851c22c9d0cb0f1c6ac5b316fa8cb4e66fe"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.31/stakpak-darwin-x86_64.tar.gz"
      sha256 "dd44a0b16745bf13a769bc45bda6ae3b7cd11d774cedc387a6dfc726a36feca2"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.31/stakpak-linux-aarch64.tar.gz"
      sha256 "21136d236c22dd38cae7469220273c477ef9eb5575b59e10ea726611c1b2320a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.31/stakpak-linux-x86_64.tar.gz"
      sha256 "44c1cabde9917d3c9c4207e0d294505c5a5eedd5f4c205e1265d6880479a2a98"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
