class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.6"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-darwin-aarch64.tar.gz"
      sha256 "0b70e5162cb2b8de371c1064075964a246fd61a408f129ba30aee66454544843"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-darwin-x86_64.tar.gz"
      sha256 "d4ab4a4df6901540b452994f74b40c78e3f40c3132b59542856409bc4bbc4fde"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-linux-aarch64.tar.gz"
      sha256 "c1a730d9ceeaa7965ddbc2caf5a09c0c13aed8d4ea43a79dde7a04774a102655"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.6/browser-linux-x86_64.tar.gz"
      sha256 "e345318b32f6df9f8485c5033f9bd0d0ee1d5e5f012885a479bf09dc76409ffb"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
