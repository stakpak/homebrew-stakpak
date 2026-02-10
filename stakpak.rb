class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.32"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.32/stakpak-darwin-aarch64.tar.gz"
      sha256 "f20e4463e1a3ccee62482b0e6e893f0eceee3ac1ac12f2eef74fec44c68017ce"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.32/stakpak-darwin-x86_64.tar.gz"
      sha256 "d4c330e8219aaa1e77afcf712670669aa8f870b47c84f5095c5e397366e539f3"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.32/stakpak-linux-aarch64.tar.gz"
      sha256 "dbffb398097495ac3235925bc28f5c6563db6637cc8655c59f36cc16d9670d71"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.32/stakpak-linux-x86_64.tar.gz"
      sha256 "2222e146ff2e94bdf7424c1ca2eedef9fac3fb3413b6f62169750034064a540a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
