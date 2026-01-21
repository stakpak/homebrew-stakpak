class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.16"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.16/stakpak-darwin-aarch64.tar.gz"
      sha256 "9246449a48fc09a72e2e30baa95e061ac362837a9f42b3bcd95c87844e0ef311"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.16/stakpak-darwin-x86_64.tar.gz"
      sha256 "c1e2aa295f5253e3e3e7018b1d37982f2b823093316625320034221dd1d93562"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.16/stakpak-linux-aarch64.tar.gz"
      sha256 "2b9b156631b287f51529fa3afc9e502ea1a81db2e250eccc95f2ac1beb792091"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.16/stakpak-linux-x86_64.tar.gz"
      sha256 "77af77896e00851ec012d1c16b4b3371368d18915d45aee0b352e56ad44b8d89"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
