class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.78"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.78/stakpak-darwin-aarch64.tar.gz"
      sha256 "5b9434da0f357406724bcc18c94312f3e0b8d6c06e4a381594ef9f609f741275"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.78/stakpak-darwin-x86_64.tar.gz"
      sha256 "15136926547d477745008c3d8b5b33113e120c4a0e2f94ccfaefdf680107daa0"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.78/stakpak-linux-x86_64.tar.gz"
    sha256 "ecbc9f7f7ec746ac18d10cdeb2bfb145081e0d3473fbd90e49670c6ffa3e39cd"
  end
  
  def install
    bin.install "stakpak"
  end
end
