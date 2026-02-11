class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.35"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.35/stakpak-darwin-aarch64.tar.gz"
      sha256 "a70f9cd1a857061a60b49118632136672156094e391c4acac14aeefc6713d59e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.35/stakpak-darwin-x86_64.tar.gz"
      sha256 "af1a3da993ea727b1ff3fd70d76e0d0f333ab7db406edc540f1b9ff78bbd3be6"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.35/stakpak-linux-aarch64.tar.gz"
      sha256 "0dd033849e190c9da3dec295a11f047890e72f6520710e369b2c9af449e203d3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.35/stakpak-linux-x86_64.tar.gz"
      sha256 "ed590be61d4b2b5155cf3a41e87a28c4aa8c3c8a1c170c7a3cb48156c0f3ebcc"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
