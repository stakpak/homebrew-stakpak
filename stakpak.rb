class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.88"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.88/stakpak-darwin-aarch64.tar.gz"
      sha256 "32b1ae4efaa3adcfc03fef2920a547d9692facc8ddeaf188965b38bee09739a1"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.88/stakpak-darwin-x86_64.tar.gz"
      sha256 "d0efa0b746fb27bc89814d9ca6ddf19f4a50b3b4274ec8bc3106bb5e13cb7ce1"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.88/stakpak-linux-x86_64.tar.gz"
    sha256 "ed45c2725e76dd717c0070716cf423e8a33bf4f8ff95dcb9a458a61333b0f0f5"
  end
  
  def install
    bin.install "stakpak"
  end
end
