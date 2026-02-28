class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.66"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.66/stakpak-darwin-aarch64.tar.gz"
      sha256 "3fb2745d8c26ce75b18816611bcaece4345805ff03547c6435b2e799e6e7d5ee"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.66/stakpak-darwin-x86_64.tar.gz"
      sha256 "e5762abac9b9fa213bdf93437d6e6db2761ac99ce79058566c1413cf0bc48eeb"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.66/stakpak-linux-aarch64.tar.gz"
      sha256 "e75d13eebe63c34eb3b9526b514d2eb609935e02045b79bcbecfb09d44f625ce"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.66/stakpak-linux-x86_64.tar.gz"
      sha256 "cca85c92c878f9c21087b302108b027b31b258385900b6763a19573a4e1afec0"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
