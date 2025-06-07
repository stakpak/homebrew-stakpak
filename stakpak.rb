class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.92"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.92/stakpak-darwin-aarch64.tar.gz"
      sha256 "1f121f19c80f592d88993bec5a6009667e050ddeaf09e19f5e4451fa7b3011f6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.92/stakpak-darwin-x86_64.tar.gz"
      sha256 "19971ab57c0b6e491b10beb5731730e4174489bd54ddcd025adcc97e46aa3dd2"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.92/stakpak-linux-x86_64.tar.gz"
    sha256 "20fc97400922258f9989f2e325f8efe7f3578cad03d1365f487e62340f056fe1"
  end
  
  def install
    bin.install "stakpak"
  end
end
