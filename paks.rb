class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.3/paks-darwin-aarch64.tar.gz"
      sha256 "d35feccf38dd09dfa539bc297ca6b21026dc186dd1503fbe69d6a3ec25155ca9"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.3/paks-darwin-x86_64.tar.gz"
      sha256 "53874438372f6dbb159e3f7f906a4bfefae3fb704bcca30bbbdcb91f1e243e93"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.3/paks-linux-aarch64.tar.gz"
      sha256 "5bafb035ac64dd11b74349e487fb9d288191a899744f8150096dd9c6ce7eebe7"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.3/paks-linux-x86_64.tar.gz"
      sha256 "44d563a22baeb5524e3e56c91ef6ec6132c529788127ba3f64f9ff3c8cc134c8"
    end
  end
  
  def install
    bin.install "paks"
  end
end
