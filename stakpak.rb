class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.43"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.43/stakpak-darwin-aarch64.tar.gz"
      sha256 "5f39c934da9ec7e8252b7cc859756804ae7527effa79d85bec8123e62ae960e4"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.43/stakpak-darwin-x86_64.tar.gz"
      sha256 "08621580d2d2b9bacb687a020752b8c7a0898872ae72fbd52b8a9ced7697ba0c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.43/stakpak-linux-aarch64.tar.gz"
      sha256 "94fcd5e490848b1e381facaee87a5c1ae75ca7318da5c1308c3d21a43f1a5284"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.43/stakpak-linux-x86_64.tar.gz"
      sha256 "4796da07b73ba23d0b40b6e29ca1757e39bef4f8832a685b92500ff039e6bfca"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
