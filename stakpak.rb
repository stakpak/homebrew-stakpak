class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.102"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.102/stakpak-darwin-aarch64.tar.gz"
      sha256 "992ae8b8e3337f90f34b37b00d335c716dd26fb2979d2cfc866ed913e234a2fa"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.102/stakpak-darwin-x86_64.tar.gz"
      sha256 "cbea9f672d41400e3105ecebbcc6cb5d4e69034beb0d68a6078b8a46d4ed2d01"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.102/stakpak-linux-x86_64.tar.gz"
    sha256 "c3b0ccc3ecd3195c18adcb2998be60f163216db0033508e6df07d5ece79ddecc"
  end
  
  def install
    bin.install "stakpak"
  end
end
