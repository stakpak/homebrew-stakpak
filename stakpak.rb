class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.123"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.123/stakpak-darwin-aarch64.tar.gz"
      sha256 "2d74fe91b4b1902e4b8b0843a7ca81b875444731bb89b4d1dd022c689228c0da"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.123/stakpak-darwin-x86_64.tar.gz"
      sha256 "8ae88e3288d07ff89ef0120f19b6e5f812a8bd652760aacc302a521aa866a126"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.123/stakpak-linux-x86_64.tar.gz"
    sha256 "5ad35c7232d46f49b743e69777fb712dacf06780c72827c61621a9a6424251b0"
  end
  
  def install
    bin.install "stakpak"
  end
end
