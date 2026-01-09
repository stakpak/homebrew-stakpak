class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.13"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.13/paks-darwin-aarch64.tar.gz"
      sha256 "ae6991861551577304fa10ccd43ba400a33cc32eb7400305a4463e74fb89fd63"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.13/paks-darwin-x86_64.tar.gz"
      sha256 "4a7ef86b2017bb2dd9e0fc3e7706f655795f7deba317c9567fcb6bd4ea1d16ec"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.13/paks-linux-aarch64.tar.gz"
      sha256 "983e0ab2a9494bdf9a07ee18f114120d170c06a1a68825b44f99d428681faac3"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.13/paks-linux-x86_64.tar.gz"
      sha256 "44d5e29d81c5b860816f72745feabd97cba707681b4363a2d5f4c47abf57098a"
    end
  end
  
  def install
    bin.install "paks"
  end
end
