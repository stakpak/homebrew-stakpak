class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.58"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.58/stakpak-darwin-aarch64.tar.gz"
      sha256 "5ed4fd892cfd0066badcab7b5faf93f8b4c06e0345f8f1caf88aa2174845a57f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.58/stakpak-darwin-x86_64.tar.gz"
      sha256 "ac40abff76477fee5ad1f6ae284ea1f062a5e89e9f250f7ba25e0d98e98e348c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.58/stakpak-linux-aarch64.tar.gz"
      sha256 "6b217dbbba730c1cb0e8a8157b3c1808fe385af689d2687a702f263551fea327"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.58/stakpak-linux-x86_64.tar.gz"
      sha256 "f5e2ea0cfc9d149e0008d05e798848b7eea9465adfc917dc6599fe5c7fef1f38"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
