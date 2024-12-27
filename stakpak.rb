class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.14"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.14/stakpak-darwin-aarch64.tar.gz"
      sha256 "effdd645a6a261e3ac7c24ef27533ee0d859f00dae437d66fce82f2fb5c2f76a"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.14/stakpak-darwin-x86_64.tar.gz"
      sha256 "64e4bc4f5b052847eba0f191ff3ecb35f8c48504d7be1bb9bbbbac34bdfb4659"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.14/stakpak-linux-x86_64.tar.gz"
    sha256 "cc558c26257672c31c9cc143c1ef61b1a66b46a88ec585b0405374fa2d107ac7"
  end
  
  def install
    bin.install "stakpak"
  end
end
