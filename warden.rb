class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.15"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.15/warden-darwin-aarch64.tar.gz"
      sha256 "dc48e68a36e5bc7812d2dad57f9cc886ae8418451de940453eb272a48cb277f5"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.15/warden-darwin-x86_64.tar.gz"
      sha256 "c6add65cf44fa2b716c2c5613530f9e748fff5a7210d1b215b6ef30bff298d76"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.15/warden-linux-x86_64.tar.gz"
    sha256 "19f2dc01559f3324dc7cb2f606dee417dfc939debd575bc86a26dc303b5cff29"
  end
  
  def install
    bin.install "warden"
  end
end
