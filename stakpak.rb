class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.64"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.64/stakpak-darwin-aarch64.tar.gz"
      sha256 "9642ec0c92980850b4a9d17c6765c9a31a68b801933882509ed7bf7f75a40407"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.64/stakpak-darwin-x86_64.tar.gz"
      sha256 "d35a4ee8258f84df06afcdcad4eaa0b5d1388a0993dea774c5ed039069be408b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.64/stakpak-linux-x86_64.tar.gz"
    sha256 "b0887d76f7171bcfd2ad9a993575f673f345e86d6248b8f80d856c20d61a515b"
  end
  
  def install
    bin.install "stakpak"
  end
end
