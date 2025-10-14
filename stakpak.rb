class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.61"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.61/stakpak-darwin-aarch64.tar.gz"
      sha256 "2f765fdc6622ae1806dffbb6e44e757cde64fff32d3326e8af4a91a48a902a55"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.61/stakpak-darwin-x86_64.tar.gz"
      sha256 "a931b9674f7505f1d4490b0035a50d406e5dc1dc06405626b3679fe36344dd33"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.61/stakpak-linux-aarch64.tar.gz"
      sha256 "1a6de4d9f54b6e3a5bf9c5463be67778b972dbe92375e4c85a306f6f6082dd73"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.61/stakpak-linux-x86_64.tar.gz"
      sha256 "8d06ccc1b3f571f45ee833b5e94e23db20d51f9184f80eaf58de6caf02df7597"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
