class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.25"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.25/stakpak-darwin-aarch64.tar.gz"
      sha256 "cf0c91a59d7ca4a330a98d4798c7740d49be1896acae8ca58ec5e6470c4d708a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.25/stakpak-darwin-x86_64.tar.gz"
      sha256 "dc06cb1330ac73dbb0645fcbfd27e1a06f0a2d30cd6ff3613315b8588e476772"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.25/stakpak-linux-aarch64.tar.gz"
      sha256 "6325abf1dc4d06dc628214ba0a5d837bb92d6ad5b04abde1ae131ec46a38b37c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.25/stakpak-linux-x86_64.tar.gz"
      sha256 "b856b2b3fa93a5634f548aefcf23964bf2308b14de51fada2b1a0da725de50b6"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
