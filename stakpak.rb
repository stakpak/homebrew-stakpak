class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.73"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.73/stakpak-darwin-aarch64.tar.gz"
      sha256 "7d205ef79c94d3387c14b9a6fc39b0be82d44abe7735ddd7089ce52bf787aafc"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.73/stakpak-darwin-x86_64.tar.gz"
      sha256 "542f7ac6387bfd2e499c022bf4306ca3b3bd6a249d56f9ce0ba30a6c6a62b296"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.73/stakpak-linux-x86_64.tar.gz"
    sha256 "f7d8924b42659fcdd7ac6f02b51b2d4c6a36fc8e8baf8f510c4e6ad99aacf308"
  end
  
  def install
    bin.install "stakpak"
  end
end
