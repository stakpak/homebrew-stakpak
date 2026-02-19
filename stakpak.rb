class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.56"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.56/stakpak-darwin-aarch64.tar.gz"
      sha256 "a0275781ac8541f8b767ab5f94bf4629332fe6aea5d23052ba4cf9846362fb1d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.56/stakpak-darwin-x86_64.tar.gz"
      sha256 "c7a4f6cec6bed789047f068d0469a58efd91bb78ee2910ee1f19194b970176e7"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.56/stakpak-linux-aarch64.tar.gz"
      sha256 "e8fdf521b31394156400630d692a8146284f4d41f3a88687fd5d969cfaa23d14"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.56/stakpak-linux-x86_64.tar.gz"
      sha256 "94f8bf47b954c8e2bfaa0fd218c7bfa5ebb16a38129726cc1c8bda96c1a6c749"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
