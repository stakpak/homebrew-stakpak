class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.73"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.73/stakpak-darwin-aarch64.tar.gz"
      sha256 "e6130908c40e8a1d87f28ec731e3318df9fb14c09ae5dd350020369c4d6566e8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.73/stakpak-darwin-x86_64.tar.gz"
      sha256 "af2df6048df88e60ee82356f149a365b38eff62811b1f3d9917fd84447cc7022"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.73/stakpak-linux-aarch64.tar.gz"
      sha256 "bef9585e72f991936c6f4765a8f2b2ca75bdd25f588d989840c10b7d41fbcd62"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.73/stakpak-linux-x86_64.tar.gz"
      sha256 "63fbe68360b30579f13c37bb7688973c3a86ae3d1fbc55a70aeba0e72f0a3079"
    end
  end

  def install
    bin.install "stakpak"
  end
end
