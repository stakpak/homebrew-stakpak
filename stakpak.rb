class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.13"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.13/stakpak-darwin-aarch64.tar.gz"
      sha256 "7fb2952aae0517544a5b9ca75efd414d9341b7e35a12dfb01f5eef271a16b2c9"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.13/stakpak-darwin-x86_64.tar.gz"
      sha256 "3d4b9034d6737ce23f6b81f15658b2c29c4ba79fdeb89de3ddc23807779a7b64"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.13/stakpak-linux-aarch64.tar.gz"
      sha256 "23b1c755e2aaae18a71f86842748ede4552f4346bc72fa00e432e4f133000d01"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.13/stakpak-linux-x86_64.tar.gz"
      sha256 "d529fb5d6792d32316ad8131599b63a552ff806a34f8b1625f10ee12923765e4"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
