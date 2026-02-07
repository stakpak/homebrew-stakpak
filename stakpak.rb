class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.26"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.26/stakpak-darwin-aarch64.tar.gz"
      sha256 "3cb9cc9187f9cf8ac950014f09a8b31cc9f6b13865c3df87b65967a306768b1d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.26/stakpak-darwin-x86_64.tar.gz"
      sha256 "9aa0d53c0d889a25892e70ecf735a90c8f004a2c09dc6ccedbde3953056457d9"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.26/stakpak-linux-aarch64.tar.gz"
      sha256 "a0a8357f63b1eef3cc105814dd9947730c2b17deb926715fa609c21b30b04c20"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.26/stakpak-linux-x86_64.tar.gz"
      sha256 "84ef7c6405b34f3883d3de26c168b0402517c0cef943eebaec33ae99214a1bd8"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
