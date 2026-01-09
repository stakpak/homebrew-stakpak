class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.12"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.12/paks-darwin-aarch64.tar.gz"
      sha256 "0c85bfc119b7c71ee1a2b15997cd9e54940f1399c4571897d442523a645ab19a"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.12/paks-darwin-x86_64.tar.gz"
      sha256 "5b56ab61ff385d1b6f413baa99194c4ebf5a373bb3e218e22479c7d44aca3d2c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.12/paks-linux-aarch64.tar.gz"
      sha256 "6a85bfd459bb652d8c3acc1108ccc2ba2b43fd915464a4efe08294c8c5c94648"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.12/paks-linux-x86_64.tar.gz"
      sha256 "4f251226e905ce68400b09b0f3215ff9225b900191ef9b1225945e104332e287"
    end
  end
  
  def install
    bin.install "paks"
  end
end
