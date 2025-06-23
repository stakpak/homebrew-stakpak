class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.3/warden-darwin-aarch64.tar.gz"
      sha256 "f151f1670a8b6330ea04a5cd56196a5998fcfe581ae543baa0731e6e413ac3e8"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.3/warden-darwin-x86_64.tar.gz"
      sha256 "e7be77ac1b240e7ac29e2921cf49023fd890aabb4c9cd0b49a7686194ec218bb"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.3/warden-linux-x86_64.tar.gz"
    sha256 "5544bf82a6967577c68648bc1d1fc99c58a8e7e1089c5974415b95bd9475c542"
  end
  
  def install
    bin.install "warden"
  end
end
