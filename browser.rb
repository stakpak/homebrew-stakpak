class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.1.9"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.9/browser-darwin-aarch64.tar.gz"
      sha256 "6312280e5a47ee2618aa3fabe3fe54aa6440b6b785ad1cf0623f6859b10bd8bb"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.9/browser-darwin-x86_64.tar.gz"
      sha256 "57271c69cf6b2d3dd3c66a871dc7ee83a811754e7b2c9cb7ecfea5019a288296"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.1.9/browser-linux-aarch64.tar.gz"
      sha256 "9be8aaee2d4aee857a030a4e72056b4eb4f84864f1bd6dbfc608cb3a4cdacae9"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.1.9/browser-linux-x86_64.tar.gz"
      sha256 "6c44039a214f02c80d7641100397611e9907fe30f620b2e4cc92e2e49f604442"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
