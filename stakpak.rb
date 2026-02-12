class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.41"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.41/stakpak-darwin-aarch64.tar.gz"
      sha256 "1784109d8001349b671d7e805f8285735d0d250e5de3f97849825e7060f2687f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.41/stakpak-darwin-x86_64.tar.gz"
      sha256 "227ad96fb8985c71da7a932d6f8fc9628eac2f88b5b86ac352001b5c0d412ccf"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.41/stakpak-linux-aarch64.tar.gz"
      sha256 "7b42464c38278f7bcc3aff152206ac0abf076ea9e5d7cbc9cc6332ae349dcd72"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.41/stakpak-linux-x86_64.tar.gz"
      sha256 "d0d2827dff1dbacffc6b7fc2fd773509b0f5736c061b0f97fde2c5f6dbd98371"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
