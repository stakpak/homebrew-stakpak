class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.63"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.63/stakpak-darwin-aarch64.tar.gz"
      sha256 "690ccf26e812101963dd95d7500b1be0971d332ec662f4f957f83bfca19201ec"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.63/stakpak-darwin-x86_64.tar.gz"
      sha256 "c5857136c2070ae38bf513a25d0baaaf2becf0663d953a0db1443955c5768fc0"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.63/stakpak-linux-x86_64.tar.gz"
    sha256 "3b72ad1df4c17fcf96e747091af20cc4cbfda5b5afc4272ef2d09407fdc6f6be"
  end
  
  def install
    bin.install "stakpak"
  end
end
