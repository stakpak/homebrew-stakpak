class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.42"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.42/stakpak-darwin-aarch64.tar.gz"
      sha256 "f8b6feb252cce6d427bbe33fde18efaf082181b9d2bdb23d3422e883c581d5a5"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.42/stakpak-darwin-x86_64.tar.gz"
      sha256 "9d4c59bfa28927aae493e1282f17cea87e0b7f5d216fc867f13cb3d6a11f673b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.42/stakpak-linux-x86_64.tar.gz"
    sha256 "dc442ad908895474104a1b076ef899edfa367fc71ebb9b8e92608b42692b4d1b"
  end
  
  def install
    bin.install "stakpak"
  end
end
