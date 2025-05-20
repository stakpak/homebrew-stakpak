class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.54"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.54/stakpak-darwin-aarch64.tar.gz"
      sha256 "298e8b230d9d5878c864f76906b84c3e5ce7598b3142fa7301df5a0237631482"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.54/stakpak-darwin-x86_64.tar.gz"
      sha256 "468751cf281a9dd89299a5cb12b87181daeff16f753b703c51df8dcf2bb8439b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.54/stakpak-linux-x86_64.tar.gz"
    sha256 "d8ed51711e7d83662edb0f6e83916bb9d1b061a18a5727a8f8b9cd5bcb8f456f"
  end
  
  def install
    bin.install "stakpak"
  end
end
