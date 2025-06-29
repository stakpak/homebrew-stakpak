class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.111"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.111/stakpak-darwin-aarch64.tar.gz"
      sha256 "9737b252adbbea5c83910f0d5097bee9d79f07932f5b3ec54f0d351809060f85"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.111/stakpak-darwin-x86_64.tar.gz"
      sha256 "9b41b05a8f528566f154dd5a6b0b7550fefb1d58102d4aed491253ede36c059d"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.111/stakpak-linux-x86_64.tar.gz"
    sha256 "9de17e47c0f06d99e911e07baba74c598c6cd6e7ccf54d9a7993bd24e4cd5474"
  end
  
  def install
    bin.install "stakpak"
  end
end
