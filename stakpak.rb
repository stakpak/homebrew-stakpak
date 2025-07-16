class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.138"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.138/stakpak-darwin-aarch64.tar.gz"
      sha256 "793e8e4e0f07e2e1b08f13a7756a12c0920a06bc2f97c3813f8fb4fe25955852"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.138/stakpak-darwin-x86_64.tar.gz"
      sha256 "9153205f07eabdf0fe04ec916ed6ac0c5557c2178604aabb8c68d7a5f7d03be0"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.138/stakpak-linux-aarch64.tar.gz"
      sha256 "81ffc9096b8e1ffe50715d59dd3710ca9d96096d5ff4340d8ac79d2bebd23c67"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.138/stakpak-linux-x86_64.tar.gz"
      sha256 "61144e6b7c3507a02d7f4c3b7f9905125de8a33f73689d1bbecdb79af592e5df"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
