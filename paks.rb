class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.2/paks-darwin-aarch64.tar.gz"
      sha256 "cc42b84fd835ea42ba4d2542d6e9c60b49aecc9589935e79aeef26c850075dc4"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.2/paks-darwin-x86_64.tar.gz"
      sha256 "b2ac40c5daa9407f5833dc03edbd572a344406c71d1deae8d73a5bce8720e124"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.2/paks-linux-aarch64.tar.gz"
      sha256 "c67f0d456872389538db6410d6014c1bdbcd14650ac59cab5676b14aacd9f0fe"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.2/paks-linux-x86_64.tar.gz"
      sha256 "c889937d19c4d064635abad447331258b8712e3517f7de8000d5f2c6bded0237"
    end
  end
  
  def install
    bin.install "paks"
  end
end
