class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.6"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-darwin-aarch64.tar.gz"
      sha256 "8fa2b0ea22964ab98b7da6da9dd7bde4a69e3adea540b4a7e1b12544ebe6a6c5"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-darwin-x86_64.tar.gz"
      sha256 "a04188e62d8c2e6ad586761f5cb4aa09f1a819fb1ea04339efdce449c59a9cb4"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-linux-aarch64.tar.gz"
      sha256 "a67a164e6c1150f8dfcd4574906d4351ad87b4e1d9b367e812ec6409d987b5cb"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-linux-x86_64.tar.gz"
      sha256 "2833c5eb4c834e1eeb8510921c9b6b945a1ea366bf3835f717d565266036d5a9"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
