class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.100"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.100/stakpak-darwin-aarch64.tar.gz"
      sha256 "db7288e5955e731ffbeb3795cbcbfe8721895c84d67f04963ffb1e9809a42799"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.100/stakpak-darwin-x86_64.tar.gz"
      sha256 "db7c3908a305b605aeed654ce8e180122f179e085f686f67a4c24d3bf95e7f5f"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.100/stakpak-linux-x86_64.tar.gz"
    sha256 "1d5e546a9d3acd4fe2ce197d5115d238c3f1e0a7b00bddbe70a2a310f2913fe1"
  end
  
  def install
    bin.install "stakpak"
  end
end
