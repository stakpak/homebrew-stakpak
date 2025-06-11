class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.95"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.95/stakpak-darwin-aarch64.tar.gz"
      sha256 "259a9a11ca6a9b32b833691869dee09d2a982247685a67acd3903d899fa308da"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.95/stakpak-darwin-x86_64.tar.gz"
      sha256 "6c2ab8516e0a569203bd833f88cfde6758cd9101a665d8ba87e57e890bf63be2"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.95/stakpak-linux-x86_64.tar.gz"
    sha256 "cf2616f0ce479421cee3e76f9d3d41e7f265c301e2c24e21c927a178d1dc2c04"
  end
  
  def install
    bin.install "stakpak"
  end
end
