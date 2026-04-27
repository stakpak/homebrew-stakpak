class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.76"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.76/stakpak-darwin-aarch64.tar.gz"
      sha256 "5d471aa2e8e98a5ec4cdf1a1258f68fce890c6618d1884edc7d8f3be876b6b36"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.76/stakpak-darwin-x86_64.tar.gz"
      sha256 "c41b9d14f12d1e23143c49b109ece1da490086f9058e729211dbf28beddba6f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.76/stakpak-linux-aarch64.tar.gz"
      sha256 "d00470df5bfb574d080ff7868ec11fbb70bc05f9b30728b2b27d9d33846246b8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.76/stakpak-linux-x86_64.tar.gz"
      sha256 "59179bc17f723c35fda1949a31d19b4ec86be969346332f2b40c8457e141f381"
    end
  end

  def install
    bin.install "stakpak"
  end
end
