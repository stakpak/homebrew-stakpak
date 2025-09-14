class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.44"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.44/stakpak-darwin-aarch64.tar.gz"
      sha256 "18d487feca1b4f916eaa759987e60b5337e5b723765f609acef47d21a4a0a51b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.44/stakpak-darwin-x86_64.tar.gz"
      sha256 "e0e14707c5b858131ba5c254b649012465920fa7ccc4bea7fc6db0f4927e0224"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.44/stakpak-linux-aarch64.tar.gz"
      sha256 "65de78fe9520b73bfc2403021e72e06b2794176f1bf4d960a94cb32ad0e0a446"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.44/stakpak-linux-x86_64.tar.gz"
      sha256 "31a88884af5486c2ef65fc679df6890c61d8f194c5aec062f3f66310dc0de2ea"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
