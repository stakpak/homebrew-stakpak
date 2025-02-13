class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.34"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.34/stakpak-darwin-aarch64.tar.gz"
      sha256 "a6224bb99a1e26436d9fb31e9a9880d19761a1b867e5724cc0fe8e71c56f78b7"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.34/stakpak-darwin-x86_64.tar.gz"
      sha256 "dbd2605295afd646f71accd4cfd0043b19a47884fa02c267f8178cfd94289f5c"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.34/stakpak-linux-x86_64.tar.gz"
    sha256 "403d3cf45d00c58eeaa78bf68c46c450d07f9c95e72da92969e5794cda0aacfa"
  end
  
  def install
    bin.install "stakpak"
  end
end
