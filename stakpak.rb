class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.74"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.74/stakpak-darwin-aarch64.tar.gz"
      sha256 "1a85a65dee491cad627ad60ae2f63b469f0e61d64f4c9f2d2902db8b31d9f72d"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.74/stakpak-darwin-x86_64.tar.gz"
      sha256 "880c50ae64df432f1ed983b4bcf544b1e0b22249a8a114bca8afe14faf3fbff8"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.74/stakpak-linux-x86_64.tar.gz"
    sha256 "e0222236e083b2e43f0523bf62c42e5c1a608c13202bf0f726d1e673be5dd459"
  end
  
  def install
    bin.install "stakpak"
  end
end
