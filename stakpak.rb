class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.62"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.62/stakpak-darwin-aarch64.tar.gz"
      sha256 "979c8efd9a2361cc14276f980f21e2006eef835e89f9d53c13c3fe578ab0388d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.62/stakpak-darwin-x86_64.tar.gz"
      sha256 "6bd092c36f5587d59cafe25731c1cdafb0984524a59cf4c0ab5ad3e702fdbe30"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.62/stakpak-linux-aarch64.tar.gz"
      sha256 "c96c7522334c630510954dcf1e8b0ab418f5d3482218cb41f4755cb0f2d92f87"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.62/stakpak-linux-x86_64.tar.gz"
      sha256 "9c4cb18c6377d6324896c093ba182286623f1d80f9aa1b521586a0ac2ed09d5d"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
