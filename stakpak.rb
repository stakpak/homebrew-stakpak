class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.108"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.108/stakpak-darwin-aarch64.tar.gz"
      sha256 "0eb10638e12c632fa4539c825826d04281395bb5c5ec0913188d265a52cd85cf"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.108/stakpak-darwin-x86_64.tar.gz"
      sha256 "cccef8de7dca5a11de08e5b4a994afd049eba62f0951c1c388050692364f7058"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.108/stakpak-linux-x86_64.tar.gz"
    sha256 "8a6232c0d2af12cc181e39cda4de99b12417339ce7e04f4c797983d1731c97ce"
  end
  
  def install
    bin.install "stakpak"
  end
end
