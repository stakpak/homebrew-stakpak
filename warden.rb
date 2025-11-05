class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.12"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.12/warden-darwin-aarch64.tar.gz"
      sha256 "346ffb0b45364928e59421c31b1862810fd8641b37541166b3f700c1abc66f99"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.12/warden-darwin-x86_64.tar.gz"
      sha256 "b87a80dd502770ba53151f887ecb8078aadd6e82a9f822aa3d3cdaca97801366"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.12/warden-linux-x86_64.tar.gz"
    sha256 "1459dd0e53f94e96c0f691f4582bf6ee66dff5607edf6aad202591ab30dfc3c3"
  end
  
  def install
    bin.install "warden"
  end
end
