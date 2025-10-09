class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.59"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.59/stakpak-darwin-aarch64.tar.gz"
      sha256 "3d8d35ff6977fd883fcf8e08483f36a65494f13a388bb16c8d8924243737b520"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.59/stakpak-darwin-x86_64.tar.gz"
      sha256 "91e4ae25caa2f8b5ceccba873080c00e6ec09855959eb8e7ff828e613cd1e858"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.59/stakpak-linux-aarch64.tar.gz"
      sha256 "6f5e2bc57f86228293b2dbfad4314ca4d571712e2e5268d43d383f3ab56fe0f4"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.59/stakpak-linux-x86_64.tar.gz"
      sha256 "40c7732e27af5d4caf5e7b505a23abef227f0f3c2dc530cf38f1a8ff21f7b330"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
