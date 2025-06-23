class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.5/warden-darwin-aarch64.tar.gz"
      sha256 "e8cbd951c659c6d93b2f2d2674e344950e9a6821fb8ee75b1bb9ee5d249d1e12"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.5/warden-darwin-x86_64.tar.gz"
      sha256 "fa61c8d9b48e89926cfcc4185ddcefbea317d4d4aeaa9d6675423d7c3abad9d2"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.5/warden-linux-x86_64.tar.gz"
    sha256 "a3d11a0d01a1a6330031c77e3bab4f092d93b930b3119cd5be380bec3ce0e40f"
  end
  
  def install
    bin.install "warden"
  end
end
