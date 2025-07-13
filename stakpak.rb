class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.131"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.131/stakpak-darwin-aarch64.tar.gz"
      sha256 "a0472464419a1a4ed2ca3eb25898e00fde3dc7bbdb7a1f1669b41aa8f3d31801"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.131/stakpak-darwin-x86_64.tar.gz"
      sha256 "8a1c8f35a53df682da40638dc72d0f4c9eb31398b7dd4de4b6f12f0d66b701a8"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.131/stakpak-linux-x86_64.tar.gz"
    sha256 "048e61700819fee803f6601dba7b14ee2c2741f9eaa8a485eebf08934beb3ea6"
  end
  
  def install
    bin.install "stakpak"
  end
end
