class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.21"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.21/stakpak-darwin-aarch64.tar.gz"
      sha256 "56ad3b04c4dc005aef12d24d43887350f77cc752499589867f3b173e29dd85ec"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.21/stakpak-darwin-x86_64.tar.gz"
      sha256 "d97ec5e465493edc226b398de3e72c17f99e63104643b3a4d2b4e37c8b53190e"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.21/stakpak-linux-x86_64.tar.gz"
    sha256 "e9aec10994a01b64b8bf6f6664e9ab5af0000c5c7cd1b3a512967ee9fd80abae"
  end
  
  def install
    bin.install "stakpak"
  end
end
