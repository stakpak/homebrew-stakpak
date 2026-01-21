class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.18"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.18/paks-darwin-aarch64.tar.gz"
      sha256 "af8c146a550661050d89473bef0376ea0dd5901d33dac88cd4d182008cc33d09"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.18/paks-darwin-x86_64.tar.gz"
      sha256 "b3da71ca355fee512b2d299a23315fb16c9878702bfd5d62cccbaccb03557f7e"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.18/paks-linux-aarch64.tar.gz"
      sha256 "a7cbe1cd2a7ffce1df55576dd824d6f16b941c5eda0c4d01285d66d707d9ec4d"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.18/paks-linux-x86_64.tar.gz"
      sha256 "d25c72fab3dc9b62d1b758497cce53d80562ace566f22a3a5475b7e8a002913f"
    end
  end
  
  def install
    bin.install "paks"
  end
end
