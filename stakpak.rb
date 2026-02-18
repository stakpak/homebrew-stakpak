class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.53"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.53/stakpak-darwin-aarch64.tar.gz"
      sha256 "3e2bfe9af1b25cb5cf89122c408ff880b0bede70b3c46d9a05cd6af94c02a14b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.53/stakpak-darwin-x86_64.tar.gz"
      sha256 "7139245b54fab3729b6e67c264dd25c2743c0f1304fd97aaa3a7994b19f0c997"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.53/stakpak-linux-aarch64.tar.gz"
      sha256 "7fcf8ca89eb9453858d592ab380e21cda1635f98509d63d33e20ba4b0b200bb8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.53/stakpak-linux-x86_64.tar.gz"
      sha256 "21083e34f29401f9b0266909aea710e3a0bbe1132bd55cd30e00f531c44182bc"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
