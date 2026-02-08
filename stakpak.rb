class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.27"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.27/stakpak-darwin-aarch64.tar.gz"
      sha256 "fe8a68af5c731052f1103e4a6f7081dd12e48be0dae8756a98953157c9f8b229"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.27/stakpak-darwin-x86_64.tar.gz"
      sha256 "11b86a57d1723970c9590dc2c043ec9fd8d2840ac9106e1d7b3f54b9887cfb8d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.27/stakpak-linux-aarch64.tar.gz"
      sha256 "b6ad0f80c2aeeb316a33be48379f4ae5bff18e95771a393c92dc5c852d93c3c5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.27/stakpak-linux-x86_64.tar.gz"
      sha256 "6de71024c63d6669c12ea80a898bd933059d2a21d605c7393b84a9719574f704"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
