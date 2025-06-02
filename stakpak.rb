class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.86"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.86/stakpak-darwin-aarch64.tar.gz"
      sha256 "0012bfe7a28322b52945bb360e8b06015530ef3b256d7f1f7199afc48694f005"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.86/stakpak-darwin-x86_64.tar.gz"
      sha256 "d2edded6c1965d01db2aeba3f933975c9c410c3f998774c8d437c2af4f5d2523"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.86/stakpak-linux-x86_64.tar.gz"
    sha256 "7020f1ce362bf702e05557b10fdb8e7290584a07094674e203e8f0d238000fb0"
  end
  
  def install
    bin.install "stakpak"
  end
end
