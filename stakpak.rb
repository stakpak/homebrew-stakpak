class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.109"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.109/stakpak-darwin-aarch64.tar.gz"
      sha256 "868a4779fb302088e6673ab531ebabcb9d325d81987be5adaf7585a82df7bfdb"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.109/stakpak-darwin-x86_64.tar.gz"
      sha256 "832415c57c2c1cfa2b17261efd534a15e5f466ae0057d6c71321c072c270a7ce"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.109/stakpak-linux-x86_64.tar.gz"
    sha256 "b45cd7ec64beea14f9841a81e4a1cb9f23020d0ab0a3e1c80b1ffea2e26a58f2"
  end
  
  def install
    bin.install "stakpak"
  end
end
