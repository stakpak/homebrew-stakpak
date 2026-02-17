class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.16"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.16/warden-darwin-aarch64.tar.gz"
      sha256 "2d51080e776c3171989471bf7f27980ebf1775a6713855bf9fdc53a7e7c2707e"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.16/warden-darwin-x86_64.tar.gz"
      sha256 "8aca3b2a3c8b5b6bd2db5de0fbf0e785e622273970c0750f0369a889076dd0eb"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.16/warden-linux-x86_64.tar.gz"
    sha256 "4890bf869ab178e496ee0b68f10cb4a2fc64c360829c77896a8603adc3d782e9"
  end
  
  def install
    bin.install "warden"
  end
end
