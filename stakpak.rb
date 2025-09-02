class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.38"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.38/stakpak-darwin-aarch64.tar.gz"
      sha256 "6d782d3ac71251f338fc35867eaebaf14fb7d6aa3f33196cf177a357895271c5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.38/stakpak-darwin-x86_64.tar.gz"
      sha256 "d5df5973d85bb15fb9bd955ad9640df564f44a41f73f0d3818999ca9eae1bdd2"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.38/stakpak-linux-aarch64.tar.gz"
      sha256 "6dd04a214e8659784e2b5ca2d3ae80cd1cc66103e345aa0c35f367c6c3f58858"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.38/stakpak-linux-x86_64.tar.gz"
      sha256 "0a17093598466fa69415d8938b8eba31a7fcac2dfc8a1fc3d00609ebdb0fe640"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
