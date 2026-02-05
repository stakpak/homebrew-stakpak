class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.7"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.7/browser-darwin-aarch64.tar.gz"
      sha256 "657584a99dcb14b382cdde6ddc11cad92aeef8e0345f6b1d6c1887998455df69"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.7/browser-darwin-x86_64.tar.gz"
      sha256 "ca806c4432b7535155dc6cb1e65070bbaa0cbd52563d01fa8659d6f17ce2ff19"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.7/browser-linux-aarch64.tar.gz"
      sha256 "b603bae6e3501f3eb28fa3feb75ac456e5f213a1e320cafa4c2bcd4de8650c96"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.7/browser-linux-x86_64.tar.gz"
      sha256 "35df72ee3c964a18642c9f9b9c3c274eae6cabf4b6aa9beac49d6521d161481f"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
