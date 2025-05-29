class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.79"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.79/stakpak-darwin-aarch64.tar.gz"
      sha256 "825ac31700e89075d4e807e21b2aa086dba228bb64dd41dbf034ca9a073eeb29"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.79/stakpak-darwin-x86_64.tar.gz"
      sha256 "675d41f0e9ce036810368ed3bef11be783ccc9a9b92362979e3e3c018083b5b0"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.79/stakpak-linux-x86_64.tar.gz"
    sha256 "b142a81e121c66c03d04a08a8e975c56b3b48704035b42e9e9435f2d16b85057"
  end
  
  def install
    bin.install "stakpak"
  end
end
