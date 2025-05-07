class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.49"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.49/stakpak-darwin-aarch64.tar.gz"
      sha256 "6555508d072df3c473365b9be9848b0dcf5e8c32eeeb2747deb98fbb422350b0"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.49/stakpak-darwin-x86_64.tar.gz"
      sha256 "aeb5501262bcc797721807001166d62c51f4dc155a6d8574398e19853655b70a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.49/stakpak-linux-x86_64.tar.gz"
    sha256 "9558aaa5294bdf7b7cd73702b89e080c9eb0dffd8ddeae4548bb5fdd546a2295"
  end
  
  def install
    bin.install "stakpak"
  end
end
