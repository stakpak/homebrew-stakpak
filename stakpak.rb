class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.29"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.29/stakpak-darwin-aarch64.tar.gz"
      sha256 "e2383b2ab38b9637bc9f7221ec46181346bc1ed24fa3eb433f751833709d9251"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.29/stakpak-darwin-x86_64.tar.gz"
      sha256 "b3d5da51a7cbcbb36a004923bff1293baa1abec67ad00218bc412d5f5b209cd0"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.29/stakpak-linux-aarch64.tar.gz"
      sha256 "8bde6d3d96847e4701a382c0eed983d01c390e2c6da1cc6eef03377281bdac77"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.29/stakpak-linux-x86_64.tar.gz"
      sha256 "bbc36aea044114d54e947cc073837e48533bfd19585e1b5c066229128d9736ec"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
