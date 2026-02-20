class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.2.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-darwin-aarch64.tar.gz"
      sha256 "07f122417a713b0e5dd3bffc92fc86cdad84fbab5b6b6b8b26faa4b136a26e51"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-darwin-x86_64.tar.gz"
      sha256 "05ed1e841f98873e96631f90e23458e5144bde370a2dd78555c5e46547a69654"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-linux-aarch64.tar.gz"
      sha256 "f1f8877fca14d3236585ebcfa845c6c9b0bb4c1447c647aef3e0e51eb726c6b3"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-linux-x86_64.tar.gz"
      sha256 "3818db2a21437a36612cab9649b793d6b4f3adfc9e91279215215ea8226dc295"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
