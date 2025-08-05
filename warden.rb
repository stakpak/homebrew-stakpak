class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.9/warden-darwin-aarch64.tar.gz"
      sha256 "7be2b2982e8c65cf14cc961cfd189e9ff345a4e80ca3ee353c77bf32bef6dc39"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.9/warden-darwin-x86_64.tar.gz"
      sha256 "918963385bb99c43fa4c6758c228a2663de23f51ec2c1165dfb98c398fd71efa"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.9/warden-linux-x86_64.tar.gz"
    sha256 "05c536ef25c0c5167ee0682e202532365b9099674d291de06364d69c4a8ad413"
  end
  
  def install
    bin.install "warden"
  end
end
