class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.21"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.21/warden-darwin-aarch64.tar.gz"
      sha256 "77c0d91fa5597f370948645c52e3955af973ddced61792c7c22f5eb232a0c1f7"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.21/warden-darwin-x86_64.tar.gz"
      sha256 "4410ae69236d349c2a5ddfc0f3b039f7bb3b23deaf61d13dd073ec25f39411ec"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.21/warden-linux-aarch64.tar.gz"
      sha256 "dc51afd0b56a078267d7fba8373e12f06ffd0c98c59d5eab18dabf0dcd2c50ff"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.21/warden-linux-x86_64.tar.gz"
      sha256 "3708a348ee6d674aff296b998358194cf2a2079f639ea7530e998ece634fd35c"
    end
  end
  
  def install
    bin.install "warden"
  end
end
