class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.64"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.64/stakpak-darwin-aarch64.tar.gz"
      sha256 "cc5822b4d411093a5cdef0e7664360f193fcd54ee35f07fbc870fa541a53af62"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.64/stakpak-darwin-x86_64.tar.gz"
      sha256 "16b2f23b09601531cb93e0f55d70037eeabcd215f4c2ae2ea42bd5c3b1164097"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.64/stakpak-linux-aarch64.tar.gz"
      sha256 "0f51cd4080b80c17207db1eb00fedb2b0daf75064c55302dee7c9a7263de4419"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.64/stakpak-linux-x86_64.tar.gz"
      sha256 "60f82ac5637d32860f75c1ec368d90a9f074ae530f8e02120182e4a05c4b3281"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
