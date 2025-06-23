class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.4/warden-darwin-aarch64.tar.gz"
      sha256 "4db40a15aabfa10685a5987eb87df017a60fd3c78b8997716d0bdcd76efa3323"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.4/warden-darwin-x86_64.tar.gz"
      sha256 "168a399d9ed80a9359b0758e340e03282aa509c744b0fccc384c7b02e26bafc8"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.4/warden-linux-x86_64.tar.gz"
    sha256 "71b34f08230c7bfbe35dd30c5010631fc4574757ab4928044e7628e7777dca13"
  end
  
  def install
    bin.install "warden"
  end
end
