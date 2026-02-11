class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.33"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.33/stakpak-darwin-aarch64.tar.gz"
      sha256 "cc948a79accfebb3bcd622671cbd3bc9a47039959a27d4957084801d9a257ed4"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.33/stakpak-darwin-x86_64.tar.gz"
      sha256 "b1c3ea26e4404173bc0630c96fc29bbc36db4c2c21c2e1dfbb72f8dde4b6f2fa"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.33/stakpak-linux-aarch64.tar.gz"
      sha256 "a300c05e8fbca1f42b97bf811af1ae9fd353888cc9d6fa3fa6adfd2cd97b5b84"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.33/stakpak-linux-x86_64.tar.gz"
      sha256 "b28680525ff5dc0a7bc120b39befd85086f100ad4a9fd8ca71c4e36da7c183e6"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
