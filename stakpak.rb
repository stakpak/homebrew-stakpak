class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.116"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.116/stakpak-darwin-aarch64.tar.gz"
      sha256 "617805e943937e57bb521d2464b6191e287097998e308466c7967145bccdc1df"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.116/stakpak-darwin-x86_64.tar.gz"
      sha256 "4192586ccf4c91a5d41ba1f23d681ec69432a856aecf16add538816e62a8de91"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.116/stakpak-linux-x86_64.tar.gz"
    sha256 "fc62c577b4959f15f8f0e44641e39bbedef567abf2d5cf30526eeb13610518e3"
  end
  
  def install
    bin.install "stakpak"
  end
end
