class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.57"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.57/stakpak-darwin-aarch64.tar.gz"
      sha256 "e8e5bab02f18cf4f8c336367fb03096ef99d338e2ebd75e4f82d4a569952958d"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.57/stakpak-darwin-x86_64.tar.gz"
      sha256 "d4d86af1a2d0a5d6710deedb30dadbd29dad45d7a07105f7a541df5c5e18ef35"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.57/stakpak-linux-x86_64.tar.gz"
    sha256 "8c284fa05b3ac33ac9e33cd293e5dfa1980f2883a16e1ed757d2364193a5313d"
  end
  
  def install
    bin.install "stakpak"
  end
end
