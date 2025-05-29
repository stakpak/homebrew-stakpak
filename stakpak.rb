class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.75"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.75/stakpak-darwin-aarch64.tar.gz"
      sha256 "00a36b5c2c88b7e3e12823545648b86d929ee79b7fd40f2afde5d2808fc05e8e"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.75/stakpak-darwin-x86_64.tar.gz"
      sha256 "76244fdb8fec6dfeeb223546f70af2d0680cd58180f853ce28b4e0325903edc7"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.75/stakpak-linux-x86_64.tar.gz"
    sha256 "7a81d68e46af3fb088691306afd04e16884e066390f4d4d1b522ff63acd00241"
  end
  
  def install
    bin.install "stakpak"
  end
end
