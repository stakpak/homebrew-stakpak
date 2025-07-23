class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.156"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.156/stakpak-darwin-aarch64.tar.gz"
      sha256 "95eacee0242b82f4c5426bead76fe2e23499595412cb52c9be23304fc91af0fa"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.156/stakpak-darwin-x86_64.tar.gz"
      sha256 "2f65de5655d2e357183a5980c45be5a9538ad96e3345b8548696748abe0ce7dd"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.156/stakpak-linux-aarch64.tar.gz"
      sha256 "f418d7a3d41273e48b0cf88e83b3a6a3baa486115c2bf5acf1107c7571a4c4cc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.156/stakpak-linux-x86_64.tar.gz"
      sha256 "bc432ea4bdcb4bd6d409317ab2a66e8942394821216f217bb71020ff5bb98f3a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
