class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.70"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.70/stakpak-darwin-aarch64.tar.gz"
      sha256 "c3850e9c3cba1eeee534422aea26cabfc7015864f2f56c9f5e30c6128fc99be8"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.70/stakpak-darwin-x86_64.tar.gz"
      sha256 "98ef8bb511a71386a3bdf9d8ec0a0a4b3911deb45fc5f422a7f6bdfadef4c3f3"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.70/stakpak-linux-x86_64.tar.gz"
    sha256 "c583602cc981c85c12ddcad6a2c23aacde1e7079922040c236b15e50772f5a8b"
  end
  
  def install
    bin.install "stakpak"
  end
end
