class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.85"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.85/stakpak-darwin-aarch64.tar.gz"
      sha256 "ad38d377fffd400b5b532dcfb3243ee73f912733102a368dbda9cc9b6922b9c4"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.85/stakpak-darwin-x86_64.tar.gz"
      sha256 "41826d19c984ad8b15e5f8379d39e7697f008c358bca180a6a58b69c23ffbc9c"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.85/stakpak-linux-x86_64.tar.gz"
    sha256 "3266c8cc8c10f0500369051df0ae3ba8b37e4bcca3b8cd8cbfdb6ae2ea6ff0f4"
  end
  
  def install
    bin.install "stakpak"
  end
end
