class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.74"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.74/stakpak-darwin-aarch64.tar.gz"
      sha256 "d14e6cc2dafca857c22ab290e4278783afa56d807ccfe9ea06ffb6f1ac213890"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.74/stakpak-darwin-x86_64.tar.gz"
      sha256 "07473b964a22911847d1a78f03c26362a381e2159a528a0bcf66bb1a0f464227"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.74/stakpak-linux-aarch64.tar.gz"
      sha256 "2a672166ab72f62382fea916012e7e1c5a5564e274b1639dfe3e5cda011862e6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.74/stakpak-linux-x86_64.tar.gz"
      sha256 "bb269806e1c9ef203536ab8921fc3f224910d1da5da362e32a1f28005f44b534"
    end
  end

  def install
    bin.install "stakpak"
  end
end
