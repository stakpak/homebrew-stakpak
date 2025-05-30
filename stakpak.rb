class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.80"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.80/stakpak-darwin-aarch64.tar.gz"
      sha256 "788bc2723d6770a8c6492366bbbe1786dc720a20f0c5cada836021869a12722b"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.80/stakpak-darwin-x86_64.tar.gz"
      sha256 "06defd0ef9e64edaf10c7d54f9bc320f62294a728fdc6926b366cca8245f3835"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.80/stakpak-linux-x86_64.tar.gz"
    sha256 "00f67483f27b04f6703c9592fa3633d06ea0596b3fb828dbe7843f6d203fa395"
  end
  
  def install
    bin.install "stakpak"
  end
end
