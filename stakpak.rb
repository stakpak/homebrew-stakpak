class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.154"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.154/stakpak-darwin-aarch64.tar.gz"
      sha256 "f46f7b76c5abb18f394a528db869841722a88e6b7ccb7bdc4b38d985ef0690de"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.154/stakpak-darwin-x86_64.tar.gz"
      sha256 "7d4128a377a64680118e04b69db005745a82be4d536ccf1d1a97e43e0c0abf61"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.154/stakpak-linux-aarch64.tar.gz"
      sha256 "e8b9ce34acf0a382e7904893fbdc9a4329f16d2713237c8cdd6bd6dfd12e9b90"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.154/stakpak-linux-x86_64.tar.gz"
      sha256 "962f37f9dbf34f3bfb65c10101abea8058b560302fb0dbd30eaa2c2d668b5732"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
