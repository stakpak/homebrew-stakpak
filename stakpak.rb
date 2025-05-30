class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.83"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.83/stakpak-darwin-aarch64.tar.gz"
      sha256 "da68bb19ed06ba20ee55dd5bd3ed5546ae0009831e65a0ac0494acc7ae888190"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.83/stakpak-darwin-x86_64.tar.gz"
      sha256 "5b66e7b7d3ca2bf0f64b510b9d671302c87748b387ea91bface39a9d586822ac"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.83/stakpak-linux-x86_64.tar.gz"
    sha256 "c33285e6fc341ef0ed474f9234d7a6e8935b5fc2baffccb885ece45273b0afdb"
  end
  
  def install
    bin.install "stakpak"
  end
end
