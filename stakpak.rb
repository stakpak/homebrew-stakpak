class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.32"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.32/stakpak-darwin-aarch64.tar.gz"
      sha256 "513fb0eeb286a61afae2b75831302dd9cde6361a35e851c8b7cfad27a27b3a3e"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.32/stakpak-darwin-x86_64.tar.gz"
      sha256 "b7754712bf5c4a105a05a8d8b593039f39c39d4e55f8e3dad5545ccf7fe14587"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.32/stakpak-linux-x86_64.tar.gz"
    sha256 "9b7e18bdf2d9b6b5cf3ac76b1aab322694c012504cbdacf245216f9bb3134a25"
  end
  
  def install
    bin.install "stakpak"
  end
end
