class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.2/stakpak-darwin-aarch64.tar.gz"
      sha256 "184a9c86b6de9502746f0cc86e45b0283838ce84dcad70fe4756654fca7e31e5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.2/stakpak-darwin-x86_64.tar.gz"
      sha256 "11bb81afc99a0b5ebde7aff007a2819dc675fab19abb58ecc119b72c04cf6076"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.2/stakpak-linux-aarch64.tar.gz"
      sha256 "556cc887d87ac5eea782d36d16813d14894cec82240dd113802fb16ec6a293e3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.2/stakpak-linux-x86_64.tar.gz"
      sha256 "bb2d941f7c3a1ac8098560c74ae473da2153469fbcde7488ab039af59ef6d26b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
