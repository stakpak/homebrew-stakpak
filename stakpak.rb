class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.28"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.28/stakpak-darwin-aarch64.tar.gz"
      sha256 "aa6ce08f2140791c6434781c2e5fed3475f11104bdd8b7e0fac5239c20d8f043"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.28/stakpak-darwin-x86_64.tar.gz"
      sha256 "ca46e8d07fd0a78a0259948818bc23eb5df1cb24486ed2f119a33574880ceab8"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.28/stakpak-linux-x86_64.tar.gz"
    sha256 "33ba3996aff65404ddd27c2d6901a462aab70c45087f92c6d1f44bd9ab8e1a72"
  end
  
  def install
    bin.install "stakpak"
  end
end
