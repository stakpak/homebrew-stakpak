class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.37"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.37/stakpak-darwin-aarch64.tar.gz"
      sha256 "4971480e5c0a9df24c911a564b0d766ebca8f6bf44ad70fb0beba716b6a90a23"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.37/stakpak-darwin-x86_64.tar.gz"
      sha256 "4f4d5ec4c0d4bafc2730df4c90dacccf91cf3bd1ff7ce8e5ba463e3673e5ea38"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.37/stakpak-linux-x86_64.tar.gz"
    sha256 "2c9ac6059751987dae055ffea8388189b293ae8b8da1ddc7bb5e8d31502b7d58"
  end
  
  def install
    bin.install "stakpak"
  end
end
