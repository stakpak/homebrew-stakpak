class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.1/stakpak-darwin-aarch64.tar.gz"
      sha256 "1df25c2fbf77e2c5c8ed9fe04661fd39d0aa725e1020d14be40dc6c33d33e09f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.1/stakpak-darwin-x86_64.tar.gz"
      sha256 "f8c9f2ce196f91586dc05f0860e71bdad1ad1324dbfa45a2bf6ddd89a9da8b47"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.1/stakpak-linux-aarch64.tar.gz"
      sha256 "b22c971cade7bdf05e5443e3a772033cc2c804a01e0a17678f053dd593882b38"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.1/stakpak-linux-x86_64.tar.gz"
      sha256 "6b2b17a72d4b874517035cbbf877bf04b7450f18242b12bec46e088be914796b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
