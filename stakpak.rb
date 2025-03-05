class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.43"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.43/stakpak-darwin-aarch64.tar.gz"
      sha256 "eca9a55cc006b62c8a60187d1d9b8083d9895575da582718a2a8d67f89119167"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.43/stakpak-darwin-x86_64.tar.gz"
      sha256 "e9b093e830c1bc9ae1b0d1bd99fe40749d904c873a0978cbcbf0c3172976bba8"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.43/stakpak-linux-x86_64.tar.gz"
    sha256 "064d89e15138df89f3d476f003942f2066c349a8e50ec3d8d9d7958b16d76922"
  end
  
  def install
    bin.install "stakpak"
  end
end
