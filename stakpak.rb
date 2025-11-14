class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.74"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.74/stakpak-darwin-aarch64.tar.gz"
      sha256 "5f92a86c78fc6e07813e0d1c6896e3382ce993b930eea3238abfd1e84de7e261"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.74/stakpak-darwin-x86_64.tar.gz"
      sha256 "7fca8c18510b27501322f350d1d4e5e1442bbefd3177f58816d4c15b74e5c24e"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.74/stakpak-linux-aarch64.tar.gz"
      sha256 "980a7a3bfcf3768c2fcdfa3ef366854a045a8937e7e2e0c671461c759593ffba"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.74/stakpak-linux-x86_64.tar.gz"
      sha256 "f8f6cd9c0b4a3b142d3bcb90084c3c3a1ab484a606f033e00e28ac1a73656906"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
