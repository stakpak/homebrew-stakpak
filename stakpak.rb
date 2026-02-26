class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.63"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.63/stakpak-darwin-aarch64.tar.gz"
      sha256 "079c1ad66d462d435cf87baa76fe817e7fab46ca3c30647ff9321b86a052abea"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.63/stakpak-darwin-x86_64.tar.gz"
      sha256 "6a69d6c27374baaf8f5a1fb9ec197a2796a1409ce7ae58e20c3135b1d8d5884e"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.63/stakpak-linux-aarch64.tar.gz"
      sha256 "b1c71b7c17f0ea957eb9ffc7199f424ae99e3d6efc8dbbce3b44888e49ea346e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.63/stakpak-linux-x86_64.tar.gz"
      sha256 "c7492b9a0915a40bfe0af0f7a9d6285af5c3ed85473029dc32d1376d2db9ed7a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
