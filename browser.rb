class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.2.3"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.3/browser-darwin-aarch64.tar.gz"
      sha256 "457b5d585385a91c5f993e5b62c84bbd2b0024c90852a17342e42c2b0cfdc016"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.3/browser-darwin-x86_64.tar.gz"
      sha256 "edd3d64b7161bd0900583b20d775b6e77b78cd67ee0504bc76eacd90df81e208"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.3/browser-linux-aarch64.tar.gz"
      sha256 "5f4053775cca61899031bf97d2e4bf4b43edab394bbab43eb997d0547e02ab24"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.3/browser-linux-x86_64.tar.gz"
      sha256 "0d89d74196f6ece4012dfd8b587762e2b509e584cbaf7e9986e99f7cd738583b"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
