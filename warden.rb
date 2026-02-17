class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.18"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.18/warden-darwin-aarch64.tar.gz"
      sha256 "27d8b3c3a0bf0e19794b9b6d7814c7245556bc5ac0e805b295eaca2c3c20a2a8"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.18/warden-darwin-x86_64.tar.gz"
      sha256 "8f90ab5b18a439555105fe99e90d7d3f052ab3f9e9c87efff5a2d511c1152aa9"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.18/warden-linux-x86_64.tar.gz"
    sha256 "5cbded1d532aca42d6e6c1e23dee18495c7cb3f7dcf95bf3096d39fcfc66ba93"
  end
  
  def install
    bin.install "warden"
  end
end
