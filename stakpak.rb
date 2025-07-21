class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.150"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.150/stakpak-darwin-aarch64.tar.gz"
      sha256 "dd94dfde68b5b72072a0c3037ef1a316d56142601ce01bf07269e4a99ee29582"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.150/stakpak-darwin-x86_64.tar.gz"
      sha256 "a03a165ba6685535273c7e69aec19050176cf71142fff24f1679994374cdb673"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.150/stakpak-linux-aarch64.tar.gz"
      sha256 "6b2583f5c4b124a743e4494e38005bb786b1843a92e2cfd2cd719d8a54a24d3e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.150/stakpak-linux-x86_64.tar.gz"
      sha256 "f195ee2965786704a185ce12745bbc44f13edd00fc40f4428d46669e7a1c1b9c"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
