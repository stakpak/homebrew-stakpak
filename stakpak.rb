class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.11/stakpak-darwin-aarch64.tar.gz"
      sha256 "5c572d2937753874c086ab00aadac736934c132ad28db57144b94ff218a0482f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.11/stakpak-darwin-x86_64.tar.gz"
      sha256 "3be4a0a04b3f5fd593d71e96467f2823a829dcd0c66aae7a5e064b78b6b25b7e"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.11/stakpak-linux-aarch64.tar.gz"
      sha256 "4a8eb06dfa7990c9ecbe13818f1f0c7c81f37b57368fa489966d44d3cd6dbffe"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.11/stakpak-linux-x86_64.tar.gz"
      sha256 "a347f9b728a2dcefc7cd36ccd31d5d8835021b7cce995a6fa92f4a10fc3f0908"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
