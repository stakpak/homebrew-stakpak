class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.128"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.128/stakpak-darwin-aarch64.tar.gz"
      sha256 "48f3a864acaa7a522f5855cbddca0ffee37786b0e4edc6d6a2617c754bf5c9ef"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.128/stakpak-darwin-x86_64.tar.gz"
      sha256 "630101c92a612e3ae687ebe37b323c997067c95dd4bcc2bed61df75a48fc2e73"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.128/stakpak-linux-x86_64.tar.gz"
    sha256 "5ec690cd9d7a1843013e2e79c6134fb1f1232cf897cb1bd3a46a3bc756879efa"
  end
  
  def install
    bin.install "stakpak"
  end
end
