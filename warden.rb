class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.6/warden-darwin-aarch64.tar.gz"
      sha256 "e2b2062dd5ad42f5fcf935637a2bde45dc6c08f709a53f9771f6dde500af6e80"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.6/warden-darwin-x86_64.tar.gz"
      sha256 "604a5f84e8f6963237c7764c00ef2e4b8894dffb8f4b34e15ead1c8b4c9938b4"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.6/warden-linux-x86_64.tar.gz"
    sha256 "b56647623e95d0a19e3bb0c78947ef0ab2d4a46f85e6e213bf0a35410ee55a08"
  end
  
  def install
    bin.install "warden"
  end
end
