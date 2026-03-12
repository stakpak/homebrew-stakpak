class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.68"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.68/stakpak-darwin-aarch64.tar.gz"
      sha256 "76b12e5a6bac4822202678de6c38bf281203c6ae57895d0581ea1885a8546839"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.68/stakpak-darwin-x86_64.tar.gz"
      sha256 "0792d98ca78268182ae35fbb61efe44786f7ea82f9d74f8d55f8e51ee460d550"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.68/stakpak-linux-aarch64.tar.gz"
      sha256 "5efe023d100fc88a9b5efefd610019fee0ce7bf6b8a25b799255719d64800ee1"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.68/stakpak-linux-x86_64.tar.gz"
      sha256 "f11c73c977de1e63c6fdd88448a8c0d265ae4d6ecf3f7d4c239fb2190139e772"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
