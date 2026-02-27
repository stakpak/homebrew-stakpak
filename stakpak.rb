class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.64"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.64/stakpak-darwin-aarch64.tar.gz"
      sha256 "3d8291168aa56cd3e024f8b3672722f336b88112d660e3e85c26c9d2b316d5d1"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.64/stakpak-darwin-x86_64.tar.gz"
      sha256 "2cdabf7323b3d7e14d4b92495b123b5b49620f60b2c5e8075caaf38c15ad3f79"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.64/stakpak-linux-aarch64.tar.gz"
      sha256 "08e84bd86f08dc1345da66023ec4df783e0575d709b8d9de081f5f27ad7ca40e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.64/stakpak-linux-x86_64.tar.gz"
      sha256 "9fb2bddeaf3ab73ba9b1ae5aa1d3b72c9373cf50c406652841b4d7a48bf39585"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
