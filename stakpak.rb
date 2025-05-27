class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.66"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.66/stakpak-darwin-aarch64.tar.gz"
      sha256 "c92b6375261ad5268a7991043e49f78933313a0784c7a0e7edb7e325ebfd17e9"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.66/stakpak-darwin-x86_64.tar.gz"
      sha256 "f34b44947d057d4640544b7220b702ae1e0d4835ecdd740c88bffe9438ed8111"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.66/stakpak-linux-x86_64.tar.gz"
    sha256 "4aedb03efd75e2abd53402333046d6d453f57b7225a99618d51be7fb7e1d2bb1"
  end
  
  def install
    bin.install "stakpak"
  end
end
