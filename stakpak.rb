class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.120"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.120/stakpak-darwin-aarch64.tar.gz"
      sha256 "5a1c7bc6927712b0e72f10948eec0d6dd25d81c75eea6b77aeb469f8e509e937"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.120/stakpak-darwin-x86_64.tar.gz"
      sha256 "e39b80160a756b20c3b1d0fa47b3f7536889fd803222d84b4c7c6548493034f1"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.120/stakpak-linux-x86_64.tar.gz"
    sha256 "e3bfa6c97d5b0f81079aea515762d7a9a41e1a28a4b792cef067f6bf2c119fce"
  end
  
  def install
    bin.install "stakpak"
  end
end
