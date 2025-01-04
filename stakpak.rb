class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.19"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.19/stakpak-darwin-aarch64.tar.gz"
      sha256 "6da9e2d110e3975a92c1095956288f3a0d8df26b30deec69dacac747a8407f7c"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.19/stakpak-darwin-x86_64.tar.gz"
      sha256 "c226251dc1563c9069917279286b7cbcdfb762d7fc875f6665b7e4e13610586f"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.19/stakpak-linux-x86_64.tar.gz"
    sha256 "6edd127c97ce1542890db5c52d1bdf1a2fde63c204a88b2fdd961a23e8d035ea"
  end
  
  def install
    bin.install "stakpak"
  end
end
