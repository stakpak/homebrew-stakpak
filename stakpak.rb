class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.18"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.18/stakpak-darwin-aarch64.tar.gz"
      sha256 "dba71c08abaef0386aa4c283d8472ec1b213f7cdc2a247d39716a5700e6a4c1b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.18/stakpak-darwin-x86_64.tar.gz"
      sha256 "07f35c06e95dad7a662a2e0caba9bfe71cd0e36eb569efdf28a189342dad8baf"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.18/stakpak-linux-aarch64.tar.gz"
      sha256 "281b3df6e62d20913bbf34abf8b19fe7f13993b1650430751f7d51c0407c48db"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.18/stakpak-linux-x86_64.tar.gz"
      sha256 "c40a24f3a95cae516ca31eb439809a093b4c726df6a1f8c51b522840c17769b6"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
