class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.30"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.30/stakpak-darwin-aarch64.tar.gz"
      sha256 "f6ea9ff1e7dba148dd9acbabc22e52f3043e754171ffea88c19f03332709ee24"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.30/stakpak-darwin-x86_64.tar.gz"
      sha256 "55942a3c39653ca1db858defe194896b75b72d3a37a2fce25fa0e2b3f6c0116d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.30/stakpak-linux-aarch64.tar.gz"
      sha256 "888aadf56866bd9e237a044a1ce47f102e1bab7c3ee5176ca2355d0bdbb40aa3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.30/stakpak-linux-x86_64.tar.gz"
      sha256 "98bbe3627051ac8805a7994dc8d026e025954908fa40d3fc8ff3679887b39b39"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
