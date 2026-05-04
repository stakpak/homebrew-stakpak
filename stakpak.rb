class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.80"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.80/stakpak-darwin-aarch64.tar.gz"
      sha256 "bfae91315670a3c82724bb8e36fe599d58f0c458fadbb6399ca6b7cb30d52ab2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.80/stakpak-darwin-x86_64.tar.gz"
      sha256 "dbb04900f7d9c7f4a0eb98c27368c58590319dc9bb211af5500a0aa27022ced4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.80/stakpak-linux-aarch64.tar.gz"
      sha256 "37160267706d520013005fb972a024d777be6bd4b7cffbbe03d76dd68d68d648"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.80/stakpak-linux-x86_64.tar.gz"
      sha256 "25efc18c8c1acb1f335b6bb2a5a9d5f5ac95c7d818349d4b538f5a0f9b86342b"
    end
  end

  def install
    bin.install "stakpak"
  end
end
