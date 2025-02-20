class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.38"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.38/stakpak-darwin-aarch64.tar.gz"
      sha256 "8632c98a76df30dfa068b3512b29280377555f90b2dc58dcd752407ab966eacc"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.38/stakpak-darwin-x86_64.tar.gz"
      sha256 "6a3e01ff611f8d3b122068f42a654975d8b7668f3da70e47293d4348774c6ccf"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.38/stakpak-linux-x86_64.tar.gz"
    sha256 "a81e56790782cb93d8717f750688af4a2fc52793cdf80cec2a43f0c4b202d116"
  end
  
  def install
    bin.install "stakpak"
  end
end
