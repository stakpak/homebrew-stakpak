class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.11/paks-darwin-aarch64.tar.gz"
      sha256 "220747b91273ec25ae7fd7d52f3a84d996ca405acd99b0f144901b5fc1ce9654"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.11/paks-darwin-x86_64.tar.gz"
      sha256 "ce42da15b36283d5ead7f56004b99121a545b0ce7eb688a407711958930c0e29"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.11/paks-linux-aarch64.tar.gz"
      sha256 "640f598644786add7fefb7d8c0890e61572cf403e3420ec0c9243b6676b89fcd"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.11/paks-linux-x86_64.tar.gz"
      sha256 "c5cb86928ce33c948ff38b2508cc796fedf17a235f1dcd950aef0ac3eb031a63"
    end
  end
  
  def install
    bin.install "paks"
  end
end
