class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.61"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.61/stakpak-darwin-aarch64.tar.gz"
      sha256 "e3306d4d0d49e7f06ebb2c93c2dee7c70ba33069e30b5ca64d0e63e7fae1ffdd"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.61/stakpak-darwin-x86_64.tar.gz"
      sha256 "8d77e7dc86e7dbc1de880337f750cad07926a9280ee40d9767571b62febecdb5"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.61/stakpak-linux-x86_64.tar.gz"
    sha256 "6f724099ac4488d62b3f2e896b77e6e5d824e7f0afb5e797b177c23b43012761"
  end
  
  def install
    bin.install "stakpak"
  end
end
