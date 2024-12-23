class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.7/stakpak-darwin-aarch64.tar.gz"
      sha256 "eb61e1904b2b1a465f755088d643e8fbe5f10a787761daf61927c59884407084"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.7/stakpak-darwin-x86_64.tar.gz"
      sha256 "23da7e5058fd4a0178223e7efb5ad3c84c0eb06bb966d6fe8f8689cc5816e1c9"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.7/stakpak-linux-x86_64.tar.gz"
    sha256 "f611138a5e25cc8da407791c388b8651d200a24ec5f389b115f4298183336282"
  end
  
  def install
    bin.install "stakpak"
  end
end
