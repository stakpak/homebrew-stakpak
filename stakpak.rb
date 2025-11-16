class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.77"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.77/stakpak-darwin-aarch64.tar.gz"
      sha256 "f64990b2aa9b5659241f0851bf5d5338a55498daab73ad8e6daafbfb264b9c13"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.77/stakpak-darwin-x86_64.tar.gz"
      sha256 "1cdc0995e3afe3b5d02879c6daa7702e95fa930d80b9703122db0e949de4071c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.77/stakpak-linux-aarch64.tar.gz"
      sha256 "b7a7d7cf2db56823b1ddb81906effe217e38fc671ac3492ad6e2d50066c1d84e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.77/stakpak-linux-x86_64.tar.gz"
      sha256 "defa139e8fb18f49ab53e4328b6524cfec67b381239f3a9771f90a01fb0fd8de"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
