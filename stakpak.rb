class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.56"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.56/stakpak-darwin-aarch64.tar.gz"
      sha256 "1cd89f03883b49833e6542f6224d994cd49bd26a15943c6ca25b60795b2c389c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.56/stakpak-darwin-x86_64.tar.gz"
      sha256 "6a7550e4c9448bea0549f0dbcb7f41e272a9468afc3ecea1ede93955ed618d07"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.56/stakpak-linux-aarch64.tar.gz"
      sha256 "8ae90ab281ba9de654b9c925dbd8ba91309e9803f6fbe5f7556e1195ab4578cf"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.56/stakpak-linux-x86_64.tar.gz"
      sha256 "13a37453f1fdd2ac6ad90d6b7688681337ce5c28ad67a75eff613dd5766cbfa0"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
