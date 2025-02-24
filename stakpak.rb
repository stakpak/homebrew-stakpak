class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.41"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.41/stakpak-darwin-aarch64.tar.gz"
      sha256 "881c03c77583c0507e29628a5cb416256cc5b5156aebec0d43ffb633c8e02f36"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.41/stakpak-darwin-x86_64.tar.gz"
      sha256 "be025d900be6504d7c60dd5a3677589fe843e9e1c7bde481929939e6897ef4cd"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.41/stakpak-linux-x86_64.tar.gz"
    sha256 "205777872cea15ff31acede55af1725b25986613365f1b72860847b3b29c6b1d"
  end
  
  def install
    bin.install "stakpak"
  end
end
