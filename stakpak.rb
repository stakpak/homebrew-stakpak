class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.87"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.87/stakpak-darwin-aarch64.tar.gz"
      sha256 "d1bfb4677dee380c27dfb29f1eb04a3d7c5a18db6bd9459e87705aed740f7a7f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.87/stakpak-darwin-x86_64.tar.gz"
      sha256 "4cb75a4caa566ac3063e16e8a8bafa446adee93dbe2999140cac077d78b6d5da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.87/stakpak-linux-aarch64.tar.gz"
      sha256 "5ffd9c23ca218cbb6e11c3fd2d6ec6890f24ab0eb50c7953f4032c6f85c68616"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.87/stakpak-linux-x86_64.tar.gz"
      sha256 "735fbaeb5d325c12d13fa1e3f5c1fd82b9bd0fd051b5d815f1739058b65d2d85"
    end
  end

  def install
    bin.install "stakpak"
  end
end
