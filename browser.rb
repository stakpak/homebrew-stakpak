class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.2.0"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-darwin-aarch64.tar.gz"
      sha256 "5f8fc552ae5a22958ee70d36bd13750c9c471775093b03b2ed4a1575c26e9af4"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-darwin-x86_64.tar.gz"
      sha256 "c679acf8ceeef5dca248b74a17cf8ca949cff23eba4368b287412c945b87d0d7"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-linux-aarch64.tar.gz"
      sha256 "b9fa67861cf4e4376ddff29a410a74c260551bc550371e940350146d40ed5014"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.0/browser-linux-x86_64.tar.gz"
      sha256 "fd6b8c4f15435bc782c8728246c98c340a77a537811cb0c863652caf2741e1d9"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
