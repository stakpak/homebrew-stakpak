class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.57"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.57/stakpak-darwin-aarch64.tar.gz"
      sha256 "fb73aa516c2051d734659e163d191ffd12ba9aa3672c799fe6bea64fafe9f50e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.57/stakpak-darwin-x86_64.tar.gz"
      sha256 "31c43662f14677f99ef22769cc7ca7970bbdafccf41fa90a0748db181397e35c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.57/stakpak-linux-aarch64.tar.gz"
      sha256 "631d1a638fcdcc07d2d3498af97f464f5ee5e3bc199e36f1b8a59db19f4ff073"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.57/stakpak-linux-x86_64.tar.gz"
      sha256 "93ae95238716c5255b661b455f7dbaa67952ce9711f76441f10d742a44fc2d3f"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
