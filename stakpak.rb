class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.53"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.53/stakpak-darwin-aarch64.tar.gz"
      sha256 "a8f148d187d7c207b685005ac08b6604b19dcd0e9f945b70b34016441ac0ad85"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.53/stakpak-darwin-x86_64.tar.gz"
      sha256 "653e2f2b896aa4ab92de4ba4308070f991a73ad5071eb738ca92a0e213a90f9a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.53/stakpak-linux-x86_64.tar.gz"
    sha256 "efdd11afa8a9231ba4d3bc787649ec58e342365209ec4fb1dd74a33359d87bb1"
  end
  
  def install
    bin.install "stakpak"
  end
end
