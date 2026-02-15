class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.43"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.43/stakpak-darwin-aarch64.tar.gz"
      sha256 "9027d4b36e6c5615dcb9ac5ecc37e339d03d8d5002bdd0174d58c9eb33409e3d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.43/stakpak-darwin-x86_64.tar.gz"
      sha256 "5aaa3f1a507a2df0ccbc58e61eaae7c8b2a6b90e8d75e4c134c83ee683cb0539"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.43/stakpak-linux-aarch64.tar.gz"
      sha256 "0fb93360a6998e1e74503aba25313b14557efd2f90b53a28b175141424e1527d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.43/stakpak-linux-x86_64.tar.gz"
      sha256 "fa880af2a7a2f0a7e697632059c9b55e4a7deb4734631c332c9de3b496ae6941"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
