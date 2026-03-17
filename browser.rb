class Browser < Formula
  desc "Browser automation CLI"
  homepage "https://github.com/stakpak/tab"
  version "0.2.4"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.4/browser-darwin-aarch64.tar.gz"
      sha256 "a93dc64eceac64f098ae5c3362701b01a6424318985370c15d920c08617f4316"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.4/browser-darwin-x86_64.tar.gz"
      sha256 "804418f12533810eab3e324dbcf78e50c100e24e2b5eb8685537b4a0266ae3d4"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/tab/releases/download/v0.2.4/browser-linux-aarch64.tar.gz"
      sha256 "8b29e4d07780fb87aee2b64a05644f3a95dc64e3145843bb956e06c75805cb7c"
    else
      url "https://github.com/stakpak/tab/releases/download/v0.2.4/browser-linux-x86_64.tar.gz"
      sha256 "c2c6769ecfd954a4f6692f2df8cd1dad189e84e9d41cc7645047136b71cbd1fe"
    end
  end
  
  def install
    bin.install "browser"
  end
  
  test do
    system "#{bin}/browser", "--help"
  end
end
