class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.34"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.34/stakpak-darwin-aarch64.tar.gz"
      sha256 "15ec8bbcb49adf5129e2084013c3dc0abfe2bb96c3de2c889b61445610f8b68a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.34/stakpak-darwin-x86_64.tar.gz"
      sha256 "78931af9e594bd318df9992bb5d21f9c93ab7291097ffc0315eae9b21aa9ed1b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.34/stakpak-linux-aarch64.tar.gz"
      sha256 "d91a6bf6015b9ab266cabc502b8f34d6b39ebe55f0d585fcd6136ce52bf86126"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.34/stakpak-linux-x86_64.tar.gz"
      sha256 "c240162be16ce1579868f10ffceead035d6f6aba9d4266fb8e6e216a59692db9"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
