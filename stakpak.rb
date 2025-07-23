class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.155"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.155/stakpak-darwin-aarch64.tar.gz"
      sha256 "e2f98a41d0f40280c475704d3f6128bca85869df8ed37743973819b65ee082e2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.155/stakpak-darwin-x86_64.tar.gz"
      sha256 "3ac8199a3c70e6363ae3b87bed3c3d3a02fbf67d4f22dc66aaccf2896601d0ba"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.155/stakpak-linux-aarch64.tar.gz"
      sha256 "c7bc5cc95af81a44fb535735cc0f2d5ebbc025ef6bd40ba48900ab49fe328e3a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.155/stakpak-linux-x86_64.tar.gz"
      sha256 "eb8c9fc8f9bbaedca32ce5bce18d1e927a84ae2971525c03ae5ef4320fec1269"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
