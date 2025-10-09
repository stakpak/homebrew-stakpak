class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.58"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.58/stakpak-darwin-aarch64.tar.gz"
      sha256 "a989c3b9793008e300fb845d907c56e1076aa357d5a40139b9900b18288f3525"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.58/stakpak-darwin-x86_64.tar.gz"
      sha256 "3e5e9c2578ad3c6ab5dde3ee81d388b6cb14653b517889e4fe2015ad1f373454"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.58/stakpak-linux-aarch64.tar.gz"
      sha256 "05db797e50f478fd2b3382376de02616245d18e3b20142aa7bd62a1033fb9f83"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.58/stakpak-linux-x86_64.tar.gz"
      sha256 "75b3a8b50e7af3a5411c41de748841481affc0cfb3e682ebc748bcc8b18b1739"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
