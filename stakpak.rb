class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.21"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.21/stakpak-darwin-aarch64.tar.gz"
      sha256 "acd951b74a1128ce01bc8907e9b5301027187e7e4d2a02ad7c3bd3cb892948a4"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.21/stakpak-darwin-x86_64.tar.gz"
      sha256 "95b8d52d0e18a59361fbebc3ca1c80d0a751e34cb7809476fbf69cdfb8a6ee18"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.21/stakpak-linux-aarch64.tar.gz"
      sha256 "fcee208219f7bdb765c018d34c64938b814e6f1b25ac6a893666229e643103e5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.21/stakpak-linux-x86_64.tar.gz"
      sha256 "f9a86902d3c33479af8dc88e414c588b1b22bf39131bf9680e78db4031944756"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
