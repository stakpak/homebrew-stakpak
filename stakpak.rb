class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.65"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.65/stakpak-darwin-aarch64.tar.gz"
      sha256 "3d0a14726f644bc7500ab93f46c81c89b709a2857083563d90027856620c9ac8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.65/stakpak-darwin-x86_64.tar.gz"
      sha256 "de591b24d872fc1d567219e5c4fcc36b13b915512a19088289be5f5cd34ee502"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.65/stakpak-linux-aarch64.tar.gz"
      sha256 "db26b3f374fc62a095aba5ab62208ce23dd4eae901036bfbb5d2ff261743bb60"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.65/stakpak-linux-x86_64.tar.gz"
      sha256 "087e34b5f4617727af8e478b4336ac54985dedb1486c2fd27e45990b178943d6"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
