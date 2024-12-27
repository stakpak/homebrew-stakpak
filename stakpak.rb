class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.13"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.13/stakpak-darwin-aarch64.tar.gz"
      sha256 "57dcef3a1069e228d9a62814f2bdb1d2b95d37e2ad8a509290233160fa1a7cfe"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.13/stakpak-darwin-x86_64.tar.gz"
      sha256 "f9f35cc636da9f1e06d7b23943fad3a2e70ad2047c339ee88c423ba146379475"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.13/stakpak-linux-x86_64.tar.gz"
    sha256 "54b628984eb8ff15b2faf204cd40a37a44f613911629ff2d223523499cf4706b"
  end
  
  def install
    bin.install "stakpak"
  end
end
