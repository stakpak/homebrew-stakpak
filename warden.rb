class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.8/warden-darwin-aarch64.tar.gz"
      sha256 "90acbb1bdf89bc0dc61eddc15b44c4d51a223d297f52790f0fffd0ee1fe37162"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.8/warden-darwin-x86_64.tar.gz"
      sha256 "de3ad6d7c29be896e26a25d66ea15616f8d770d3da4b61973f1e53bccfaf3e86"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.8/warden-linux-x86_64.tar.gz"
    sha256 "502d0265673563b79e10b5d17e6cd3e9a1295ed639451cc0d7e0418e7800b44d"
  end
  
  def install
    bin.install "warden"
  end
end
