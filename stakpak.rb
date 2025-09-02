class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.35"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.35/stakpak-darwin-aarch64.tar.gz"
      sha256 "2f665ef323f6400c897091a87cd922c7627310bd917d1ca2b3b48084e032d908"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.35/stakpak-darwin-x86_64.tar.gz"
      sha256 "c375485cb8f3002c3a1f25ff52a1459d7f94e728716cceaadb708ee9208a4dcd"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.35/stakpak-linux-aarch64.tar.gz"
      sha256 "631c9d3834945949d6ee1c4e2795bcdf5eab5ed4679ad04af28e62ba8cefb2e8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.35/stakpak-linux-x86_64.tar.gz"
      sha256 "af05e083d7fc6b86fb698e5cf71e7896b0887172e3fbb5422e17e85c82124416"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
