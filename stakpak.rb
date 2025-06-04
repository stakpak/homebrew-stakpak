class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.89"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.89/stakpak-darwin-aarch64.tar.gz"
      sha256 "c4cf19e31cacd42a11807966346c65e4b7ee9d38cdcff750160af93a84a9cf07"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.89/stakpak-darwin-x86_64.tar.gz"
      sha256 "f2dd38bf08d0af165c6f0807e18eacbb7bad20c4314a7614772a82db3940412d"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.89/stakpak-linux-x86_64.tar.gz"
    sha256 "211a056dcc3bc9446dffea6d002cbbeed4525a1cbdd990f9a3304e62478c84c4"
  end
  
  def install
    bin.install "stakpak"
  end
end
