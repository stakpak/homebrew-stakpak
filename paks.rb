class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.5/paks-darwin-aarch64.tar.gz"
      sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.5/paks-darwin-x86_64.tar.gz"
      sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.5/paks-linux-aarch64.tar.gz"
      sha256 "020f8f1e96f1ef0f1f6319c4d28a0e7f16603291351b1420f6fee9d3a4f8402b"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.5/paks-linux-x86_64.tar.gz"
      sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"
    end
  end
  
  def install
    bin.install "paks"
  end
end
