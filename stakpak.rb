class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.9/stakpak-darwin-aarch64.tar.gz"
      sha256 "66918c3eaffdbaf9bc876b8750dc46a4b916a3c3f13e1bf7d34cff5309c939e7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.9/stakpak-darwin-x86_64.tar.gz"
      sha256 "75a517e51e80de60b44ba3d207b29a9e0b45b5f2a0fed6eb6920f21e98cd95d2"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.9/stakpak-linux-aarch64.tar.gz"
      sha256 "db7017dcab91e4b5c43be99c2408b9064d14732ac8a4a861146c45f3fe2fd59d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.9/stakpak-linux-x86_64.tar.gz"
      sha256 "63cc007c226e8882b5dc6782cb04ea8c2a75878259b7072ea11fa82f59110ae5"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
