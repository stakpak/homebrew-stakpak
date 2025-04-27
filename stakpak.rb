class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.48"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.48/stakpak-darwin-aarch64.tar.gz"
      sha256 "b92c1e97781b9c131d12b08be976b55e05a7a5b2b016136904737095f010b2c9"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.48/stakpak-darwin-x86_64.tar.gz"
      sha256 "5bf740c4aa745d6515249affd41f6c5d5ef202202978e53faf0b94c2e89daf9b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.48/stakpak-linux-x86_64.tar.gz"
    sha256 "011816e33bac7c95e5c786916cd14bb032e95f5fa278140864123f80f88a7934"
  end
  
  def install
    bin.install "stakpak"
  end
end
