class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.17"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.17/warden-darwin-aarch64.tar.gz"
      sha256 "cfce3e95603e32346535d66b316f2bf2a77ad00d540107e7b5ca93eb007ad1db"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.17/warden-darwin-x86_64.tar.gz"
      sha256 "d8f0d14677d4734871bef117d45f42aedb2fd43c89cef7fc13caef0ff3ad5cfd"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.17/warden-linux-x86_64.tar.gz"
    sha256 "2e1d4381325dd726ede1a874784d675e09bcee78163e30bbd2ec96d1955e66ed"
  end
  
  def install
    bin.install "warden"
  end
end
