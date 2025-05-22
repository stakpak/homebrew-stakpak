class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.59"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.59/stakpak-darwin-aarch64.tar.gz"
      sha256 "d629ef02d3223bcfc77dbe06fad8a5b150ad46bb2024761dbd45eae61226a8e7"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.59/stakpak-darwin-x86_64.tar.gz"
      sha256 "e1caebf6fbe0e3eced2b0e14c5c384901d57d08409fbc7fa15945d6892573615"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.59/stakpak-linux-x86_64.tar.gz"
    sha256 "f4ac44b0abcf22409089dfc0c1cb48d208df250c40f625c59ec562da8a278448"
  end
  
  def install
    bin.install "stakpak"
  end
end
