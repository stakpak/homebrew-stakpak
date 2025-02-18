class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.36"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.36/stakpak-darwin-aarch64.tar.gz"
      sha256 "ca9307ef0f585708ec068b5ff0f7a4fc762e2edab8b5e4d9f25cc96f2c5dc639"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.36/stakpak-darwin-x86_64.tar.gz"
      sha256 "57cdc3423d42a9ec8a4590e7718bef1e57ec5af0bbd12635eaf1b6b017d128bc"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.36/stakpak-linux-x86_64.tar.gz"
    sha256 "3450df3f5d0cc7e59cf751273efa3d9075269848163cd19d3d3a9e39a7ff693a"
  end
  
  def install
    bin.install "stakpak"
  end
end
