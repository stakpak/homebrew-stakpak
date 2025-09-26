class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.50"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.50/stakpak-darwin-aarch64.tar.gz"
      sha256 "e0ad56c744f2dea75a2326ad3490f6aeda2432b796054680cf491a21628ae6c2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.50/stakpak-darwin-x86_64.tar.gz"
      sha256 "ff79bacc389cf85b0ab8e39dd32ad2575bc64aaec563e9d544ef6aca7c5ee4d6"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.50/stakpak-linux-aarch64.tar.gz"
      sha256 "b25f8a114dfe4ef38f326466336faf2f6d5cbe3538b21a54c5c535445c2a342a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.50/stakpak-linux-x86_64.tar.gz"
      sha256 "80ba55519fac5c97ae01f204dff7e96ad9e4d48ed77526d53d6a3908ab5cc9d4"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
