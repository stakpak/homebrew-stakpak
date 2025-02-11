class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.33"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.33/stakpak-darwin-aarch64.tar.gz"
      sha256 "842f7b02d0b3de9b8d6fd89ca6cb56e219c53d35a60ff786c6c6e521b1979fa6"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.33/stakpak-darwin-x86_64.tar.gz"
      sha256 "e7d892a120ecf0d1fae1519464ef90d584ce3378ccfa9b608295229cbb10b300"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.33/stakpak-linux-x86_64.tar.gz"
    sha256 "7aaff93e825878cb9b805cf9c2ddf232c0e7f1e3079d912662754f12412701bd"
  end
  
  def install
    bin.install "stakpak"
  end
end
