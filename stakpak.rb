class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.24"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.24/stakpak-darwin-aarch64.tar.gz"
      sha256 "4e0dd9a2f33e515195a5829d8bf4cdd72ee2e3f57f7d0669b1a5f934fa38cb37"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.24/stakpak-darwin-x86_64.tar.gz"
      sha256 "511a318c69971c924f57d934575906ac3c3c7c154e1177b617a38ecd768160be"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.24/stakpak-linux-aarch64.tar.gz"
      sha256 "765ab5841dc7799c109d1bc8a5ca3ac5df117847fc9b9131d947d1b6c438f5b5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.24/stakpak-linux-x86_64.tar.gz"
      sha256 "c2a682db063b83ff788f1b6b145860d8be19ada9722827833dd7fe5fd0c336b2"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
