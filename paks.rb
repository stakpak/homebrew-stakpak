class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.16"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.16/paks-darwin-aarch64.tar.gz"
      sha256 "a644522b389403a9ef5cf9d7b1c746450203d37e16b587b75b6c0c5ae471a9fd"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.16/paks-darwin-x86_64.tar.gz"
      sha256 "8017722c9c982ee783a65648847ed13416dbd19b2a87934ed9f82ec0d6fe85c3"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.16/paks-linux-aarch64.tar.gz"
      sha256 "d6f1cadce0a932b15367829ff8cf412ec6c98b1f39a7bc31dc418a0b72fd3a9d"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.16/paks-linux-x86_64.tar.gz"
      sha256 "6bcb6c8b7f5ef775b92cc5e9204072c1e1c758357fbe67d13843454021d1a2a9"
    end
  end
  
  def install
    bin.install "paks"
  end
end
