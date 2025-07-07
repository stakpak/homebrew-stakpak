class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.126"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.126/stakpak-darwin-aarch64.tar.gz"
      sha256 "3af511172b2ae629a6131be136a9c4ff08b161c7cd7bc864998a3143b16bcf02"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.126/stakpak-darwin-x86_64.tar.gz"
      sha256 "e3514a995b8a915191ba8962a9f1b599bb35f7d4706182e10f1e0289c40f4aab"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.126/stakpak-linux-x86_64.tar.gz"
    sha256 "cd5e5957536e8edc205bc922fa161473d4e8436f4f9d65998595884cb202a07a"
  end
  
  def install
    bin.install "stakpak"
  end
end
