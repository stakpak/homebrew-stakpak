class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.47"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.47/stakpak-darwin-aarch64.tar.gz"
      sha256 "83f406bb624d4ed6fe0a2ff1abb7395008fdc283be970992b7815805d97c9d7d"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.47/stakpak-darwin-x86_64.tar.gz"
      sha256 "5527cae2003804dc64580de5828782c8d128643140078afb43532c2431e450e9"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.47/stakpak-linux-x86_64.tar.gz"
    sha256 "5b37099f6d2993e3323012afdab6dae375e51cf1d937a9a6d26d8c30db3496f0"
  end
  
  def install
    bin.install "stakpak"
  end
end
