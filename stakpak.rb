class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.15"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.15/stakpak-darwin-aarch64.tar.gz"
      sha256 "76175a6166952d154ab1e405ac0c6e9df5a74656b6ab7ff126da90751d7ee659"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.15/stakpak-darwin-x86_64.tar.gz"
      sha256 "f6af3904142aac4a7deac3f6a7a27c511c8a2eadad2b73737b2f7425cdf81872"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.15/stakpak-linux-aarch64.tar.gz"
      sha256 "f8c653950a76b9521fec73ea0419abc9d552c8287bb84a88f4f429cbedcf6ee7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.15/stakpak-linux-x86_64.tar.gz"
      sha256 "17da03fda3e2a04b412c68878c788e1867a5f2be13a3134254df39e65cddeb47"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
