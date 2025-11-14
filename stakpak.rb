class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.76"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.76/stakpak-darwin-aarch64.tar.gz"
      sha256 "aa4acf04355550ce44097393c7685246b0bfa2be29b699b13fbd2339a54faaac"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.76/stakpak-darwin-x86_64.tar.gz"
      sha256 "9dca8d5542015764e5c5e4649c4c5dd2fdfad246887d09bc22f8939a681cf431"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.76/stakpak-linux-aarch64.tar.gz"
      sha256 "292fb728aa32985cbf0b7aa2f9a03b9c05c3db724181b2a38e022d5da7f081a6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.76/stakpak-linux-x86_64.tar.gz"
      sha256 "7b6af8019b8e706959f35634755cc6f4cab818761ed12d8f738016bbe4d2fbba"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
