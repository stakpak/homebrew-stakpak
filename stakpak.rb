class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.130"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.130/stakpak-darwin-aarch64.tar.gz"
      sha256 "e805cba07b3e0659259a78db3db988882471e5cead298124ac3dc206ac183d09"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.130/stakpak-darwin-x86_64.tar.gz"
      sha256 "4c376cd8242ca9f8b5c61fdffa6cbb811f6bb18044cf6cb90345de4cdc537f4e"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.130/stakpak-linux-x86_64.tar.gz"
    sha256 "78907cc93c8a7db150dbf6e0469cc493ca419c4e72b26c83fb81115ef9ce6b22"
  end
  
  def install
    bin.install "stakpak"
  end
end
