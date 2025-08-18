class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.28"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.28/stakpak-darwin-aarch64.tar.gz"
      sha256 "543830c9660118bc77d906296f21690c39dc169b71c5e17a8c2bce5eb59ae4c5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.28/stakpak-darwin-x86_64.tar.gz"
      sha256 "903ea2d748b0ea1f898769d6b5fc372db6646132e6e6f30c1268c9edb9d1d58c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.28/stakpak-linux-aarch64.tar.gz"
      sha256 "788176105549925651d3bba71994d85caeba96be0277dcc5d52c802283f8dfb7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.28/stakpak-linux-x86_64.tar.gz"
      sha256 "845c6d496f322a1a253dca473d32d89244c6f511bfdf67bc4e416b35c76d966d"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
