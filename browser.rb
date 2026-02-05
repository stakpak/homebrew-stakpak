class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.5"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.5/browser-darwin-aarch64.tar.gz"
      sha256 "443e8a794455e661bff9b6cf50308c3e8f78860e3ab6619f8fc57ed71574ad54"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.5/browser-darwin-x86_64.tar.gz"
      sha256 "afcfaf36fc9460b4c20b8a9fa22c5816a3e47df3fc70f4dd9d8ab04cb1e61fac"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.5/browser-linux-aarch64.tar.gz"
      sha256 "be54e43328662c4af7be618c2b8aed78cd4826e00013487b01d64ae4ff1728cb"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.5/browser-linux-x86_64.tar.gz"
      sha256 "6809676f12c6acc6cac61438e7e218b4d7fab553bb43a14b1b9e94582d52c02f"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
