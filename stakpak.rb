class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.65"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.65/stakpak-darwin-aarch64.tar.gz"
      sha256 "a9c73576413cd8935f2494bf9148e38edae6bdc9ef2f856088c59e0eb12a85cd"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.65/stakpak-darwin-x86_64.tar.gz"
      sha256 "957712305a24549ffa0504f69a9e6a419724e0d0e91965c1f93f7f3640526a8a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.65/stakpak-linux-x86_64.tar.gz"
    sha256 "7af81542c2971da56779cbc40d786b13454019e6195d923a33a8121af967c089"
  end
  
  def install
    bin.install "stakpak"
  end
end
