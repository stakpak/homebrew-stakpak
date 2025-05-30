class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.81"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.81/stakpak-darwin-aarch64.tar.gz"
      sha256 "a182cd93ab74c0043d57d6e3ea14d32a0addf910456fcb69d0b4eaf6940f4fab"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.81/stakpak-darwin-x86_64.tar.gz"
      sha256 "ee14dbc1c61a08ada4372def27ed2edc0350ba0b3352056c8c76b3c61d1dd055"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.81/stakpak-linux-x86_64.tar.gz"
    sha256 "f8eba8b6543a735b53389c0e4908c585af249537890daac7153ae07441433d57"
  end
  
  def install
    bin.install "stakpak"
  end
end
