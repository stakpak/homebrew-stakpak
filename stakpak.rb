class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.40"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.40/stakpak-darwin-aarch64.tar.gz"
      sha256 "dc139b53c99d9ac74e7dcaf74ce6dc9484837ca47f000970cdfd0d94a6414077"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.40/stakpak-darwin-x86_64.tar.gz"
      sha256 "d8e0a34e93aab657cc8293dda4c339ef3b3bd08214aaa44dcf4b173d39d10708"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.40/stakpak-linux-aarch64.tar.gz"
      sha256 "f98785f196372f4276129a8b5153879054b608b080005974ed123499f59a7594"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.40/stakpak-linux-x86_64.tar.gz"
      sha256 "12f273dee72b57eaf32568f7d1d112b500bdc67ed98d3b5b6a8a5d74813df3ba"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
