class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.0/stakpak-darwin-aarch64.tar.gz"
      sha256 "c8789323c271f2c5a2afcb31edb34383660ff24aacc788d3ed49f29ae1ae70d7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.0/stakpak-darwin-x86_64.tar.gz"
      sha256 "e1804fb625a02c347914fda5e7223c6307cccfc6853466f2235a5d63ea2ddecb"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.0/stakpak-linux-aarch64.tar.gz"
      sha256 "ae11988be6a2df919bd7d7839d6940d1c3a66cefca6fc8bdcfbc368b93450b8c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.0/stakpak-linux-x86_64.tar.gz"
      sha256 "6afe0c50150b56ecbd1faca338f32e61d0a01192a0c8e349992410db7574ccae"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
