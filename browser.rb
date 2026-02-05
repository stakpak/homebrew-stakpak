class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.8"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.8/browser-darwin-aarch64.tar.gz"
      sha256 "b00a04ec3d6b3d50c90d05880baff0f57817ad2324f06c45ad128de6c441860b"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.8/browser-darwin-x86_64.tar.gz"
      sha256 "860310efe77385e90ec0c957c47818c2bbbb234ea30e67fd074a113c8e4ea720"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.8/browser-linux-aarch64.tar.gz"
      sha256 "33e79fbaaad449303348a749410f45f7f8baa97763de1265cc4ba2974cd4241e"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.8/browser-linux-x86_64.tar.gz"
      sha256 "085224fe68d40fbbda76bf72c40d2f6391497dcdb0c778a97defe0acb015514d"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
