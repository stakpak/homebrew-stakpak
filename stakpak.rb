class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.141"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.141/stakpak-darwin-aarch64.tar.gz"
      sha256 "8b7a107d1d18479a6432d47855e16ab2565bb69e296f7f30190bc70dd88c55d9"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.141/stakpak-darwin-x86_64.tar.gz"
      sha256 "d04f7f3961360e1948954d8b27e58de0b19d3d7b04bf416510df51069394bf5d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.141/stakpak-linux-aarch64.tar.gz"
      sha256 "12e46ad1093a99167a0b12f1d0dc525577776465c9d01ed4180df5b858adbbff"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.141/stakpak-linux-x86_64.tar.gz"
      sha256 "f75a964a6f6859929aefd0a52f97e68d7af519b58097661468e2d23e79e04cf6"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
