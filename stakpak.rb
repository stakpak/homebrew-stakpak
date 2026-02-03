class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.20"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.20/stakpak-darwin-aarch64.tar.gz"
      sha256 "0227bf8fc6a70b2a13c337ef0fd4b2d4ee9abcaa7b4e5b87f2747d259584921c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.20/stakpak-darwin-x86_64.tar.gz"
      sha256 "2f642e246c702140cc37c5aee297f00dfce76c0ae820bdcdcaf10160690582b0"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.20/stakpak-linux-aarch64.tar.gz"
      sha256 "1ba8ee9a75e8fdc7446bc97c5cdff825ed0499b85545b4a84f5184c34eef6ed9"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.20/stakpak-linux-x86_64.tar.gz"
      sha256 "3023cbc2d26bc0293775cba0b26c1d80f7e7f79a08b18c5908afa6423f640b54"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
