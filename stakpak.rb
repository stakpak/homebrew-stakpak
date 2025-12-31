class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.7/stakpak-darwin-aarch64.tar.gz"
      sha256 "9190389c72bb55dabac580c0fc31f36521705a2ccefcd32a021071fd45458671"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.7/stakpak-darwin-x86_64.tar.gz"
      sha256 "75e35032b8706d1774d5e825888d7894f38354528c4d5b12e9f9b68851646c36"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.7/stakpak-linux-aarch64.tar.gz"
      sha256 "d584abd7b98dd8ac6fb198e7aa383ae5ab38be83066787566031acdf43b5a450"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.7/stakpak-linux-x86_64.tar.gz"
      sha256 "a2a5e408318daeb42cb0ee9b82c140f1f5f2f5ad53650b21e3fa6e7fb71100cf"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
