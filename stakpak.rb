class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.69"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.69/stakpak-darwin-aarch64.tar.gz"
      sha256 "6d5827f270280e6c0673487982fec84f192802ef1b761922230b700e7039f240"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.69/stakpak-darwin-x86_64.tar.gz"
      sha256 "9e3a073c151c41fdad2a111dede1ee59e79f8d1cb3a3e7a2965581ab01bd3c09"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.69/stakpak-linux-aarch64.tar.gz"
      sha256 "74e09c262483f965752c8da22043a049bb51722fdcd23de48e20a86cf8f0ef86"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.69/stakpak-linux-x86_64.tar.gz"
      sha256 "ed02a735d6a020876c5f353a6f73d1ecdc7ba8c1b33abbc769688d2b5691276b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
