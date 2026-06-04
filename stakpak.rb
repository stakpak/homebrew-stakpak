class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v1.0/stakpak-darwin-aarch64.tar.gz"
      sha256 "99d2b710bc7fd866a5fb08abf40a84551e21e28fb7928a41ce62b7ea4ca13549"
    else
      url "https://github.com/stakpak/agent/releases/download/v1.0/stakpak-darwin-x86_64.tar.gz"
      sha256 "1e68a6e53e0665679b651d5f0ecfff485e1a194d78cdf6f5638b5bac7489bc71"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v1.0/stakpak-linux-aarch64.tar.gz"
      sha256 "821d3baa3ef130b7eb0a7315b32920153ba4bb709e56bc3936a5a0183206725a"
    else
      url "https://github.com/stakpak/agent/releases/download/v1.0/stakpak-linux-x86_64.tar.gz"
      sha256 "451265b800985e5b01207998b5e1200d808b14f60dcaaf6ca0f13dd858685381"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
