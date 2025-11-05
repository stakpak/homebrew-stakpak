class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.11"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.11/warden-darwin-aarch64.tar.gz"
      sha256 "bb2fc7777444220df263647660bf5828fb42dc7da9841af187593c15f89fe481"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.11/warden-darwin-x86_64.tar.gz"
      sha256 "571388d35ec2a893983b9ea8034352c5e51720b1d028de24a803a2fafe5dc744"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.11/warden-linux-x86_64.tar.gz"
    sha256 "9420cf143041b80c18b79472a8be021d97af687983996afbb957f282517dc181"
  end
  
  def install
    bin.install "warden"
  end
end
