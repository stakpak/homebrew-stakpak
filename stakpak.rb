class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.9/stakpak-darwin-aarch64.tar.gz"
      sha256 "6347c0bb8ecf9ec625952594ba1fd29c34cb980bc1dbeaa5e25840349c39fc01"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.9/stakpak-darwin-x86_64.tar.gz"
      sha256 "5664f3fd5ec0660e9cc7ee791f4dc83df4873324cc5996800538936bd730bc72"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.9/stakpak-linux-x86_64.tar.gz"
    sha256 "2512eed7253c376e6e9a9173c172ced8375c01e6a5430681ef86db12dd90f74b"
  end
  
  def install
    bin.install "stakpak"
  end
end
