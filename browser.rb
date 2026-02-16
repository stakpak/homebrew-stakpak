class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.10"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.10/browser-darwin-aarch64.tar.gz"
      sha256 "01d82b509435298ec91b09a35d7841f9251247652637c6b2cd24be63ddad0adb"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.10/browser-darwin-x86_64.tar.gz"
      sha256 "a8e3247c2af277254d708821d683575abb18cdcd39081902998146a4499db773"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.10/browser-linux-aarch64.tar.gz"
      sha256 "d9e6fac39955565f069ff8a6ff73e907d599bd3d072e269c970708702beea23d"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.10/browser-linux-x86_64.tar.gz"
      sha256 "e780bcc2548ccf51b51be5d076dc62cb3ad1f89260ad9d65977e0874e013275d"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
