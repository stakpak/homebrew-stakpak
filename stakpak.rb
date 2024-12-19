class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.6/stakpak-darwin-aarch64.tar.gz"
      sha256 "08df80ae747bf7bc0c53f1d68a1b42f235a982d5b54fa36297a19d8d4da07241"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.6/stakpak-darwin-x86_64.tar.gz"
      sha256 "42482df051551a77ae7bb6945f3585534559cc53600173dd0a15cd92302d8029"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.6/stakpak-linux-x86_64.tar.gz"
    sha256 "dbda34784623c240cbeb5f759ecd49ba5dbb228a5fb0e70e2241f8e3d680d911"
  end
  
  def install
    bin.install "stakpak"
  end
end
