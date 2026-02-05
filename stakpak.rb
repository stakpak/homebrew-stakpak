class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.23"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.23/stakpak-darwin-aarch64.tar.gz"
      sha256 "0a88854429c79b5ba5ef0d8e695cd365a4cbe9a1c0900f3a6f98733ed2e61e40"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.23/stakpak-darwin-x86_64.tar.gz"
      sha256 "c593358aa1702fc4e10914542c4b057325f2532ccaa7f400f3680bec0b437e43"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.23/stakpak-linux-aarch64.tar.gz"
      sha256 "8d0270c1e620045f083a98a33525035eb2b93a5ee725507972515ee9846207db"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.23/stakpak-linux-x86_64.tar.gz"
      sha256 "285f35a7f5648adfcb1dcf72692c6cbb3f5f7edc973fab97cf8820edff5fb7f9"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
