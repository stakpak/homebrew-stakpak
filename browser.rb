class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.2.1"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.1/browser-darwin-aarch64.tar.gz"
      sha256 "1eb866fc9252cd017d296da593dad3a4de6de86525ec1e0784173e8c50492aaa"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.1/browser-darwin-x86_64.tar.gz"
      sha256 "948020655a7ceaa0f28c7fe861f8e8633ac88e70f2e4ae6dbb39b0c66877f7dd"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.1/browser-linux-aarch64.tar.gz"
      sha256 "fb98128d31550035cf7a07679fb342e3046abce61e5b0850c43b7145683a9221"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.1/browser-linux-x86_64.tar.gz"
      sha256 "82009718bfbb55748278830ff8ef23addb139daf6dd848ada69db4a53aaf0ff6"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
