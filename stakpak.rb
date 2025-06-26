class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.106"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.106/stakpak-darwin-aarch64.tar.gz"
      sha256 "a8527388a024635c12ed524263697f4d015fb48b95c658b57b023a8fce0e8255"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.106/stakpak-darwin-x86_64.tar.gz"
      sha256 "58aa794e592fde5c937021d7134f6ba931dee577ff755b4931b275e1304090b3"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.106/stakpak-linux-x86_64.tar.gz"
    sha256 "f29ef53110d263d68f41b8727e77bb18395114677061f744275e32da0c626be6"
  end
  
  def install
    bin.install "stakpak"
  end
end
