class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.25"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.25/stakpak-darwin-aarch64.tar.gz"
      sha256 "2c959eb41ae91edea2ce455f160f3b595d02ffd3491fcde9c045b05bf901bb34"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.25/stakpak-darwin-x86_64.tar.gz"
      sha256 "98f8ff5399d06048522fa2d378a02a0f2177ef2ae7919612c7afd7d1d88e2b0d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.25/stakpak-linux-aarch64.tar.gz"
      sha256 "28992bfa91ea71b37081c0780d9b1641807211efdf78bae1056da009b7ec19e6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.25/stakpak-linux-x86_64.tar.gz"
      sha256 "817f1fd0a0cf41354719d6e56a41b2f46e7f437c1da3e76f4bebe8e8509118ce"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
