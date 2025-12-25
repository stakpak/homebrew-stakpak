class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.10/paks-darwin-aarch64.tar.gz"
      sha256 "3c503bb1cce0192ba9ab883084d508159d27be6ea2d551448572ed8eee53f21e"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.10/paks-darwin-x86_64.tar.gz"
      sha256 "739198ce331b8af12cf92af75ac462f781dc4e3ec649d9276af74776c11c91ac"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.10/paks-linux-aarch64.tar.gz"
      sha256 "7f00a0e8460c103c1319923badeed9fe9d54248336d3b150f924fe533825c8ac"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.10/paks-linux-x86_64.tar.gz"
      sha256 "266c87309fe891463bcef71a0e02874528516444dbb39d917c3d1d4d7e81033d"
    end
  end
  
  def install
    bin.install "paks"
  end
end
