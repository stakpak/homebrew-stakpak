class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.22"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.22/stakpak-darwin-aarch64.tar.gz"
      sha256 "46f07aa8bf90c20f4bee652fe53f51e9b6a60536b030ab46fcc7130e6a4d962f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.22/stakpak-darwin-x86_64.tar.gz"
      sha256 "c4191a29704340b964697586cec16b3ba4251ea0b1bdf6a4f685feaad4b5b033"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.22/stakpak-linux-aarch64.tar.gz"
      sha256 "959ef171e472783dbba53bd66f1968e87204795c2c19415643f5829814e60a45"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.22/stakpak-linux-x86_64.tar.gz"
      sha256 "dac808438cb4f8181ffdcb558518b643928172f3d741de410ec13596f3fb72c1"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
