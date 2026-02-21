class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.59"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.59/stakpak-darwin-aarch64.tar.gz"
      sha256 "b9b269f08396ac42cd49826f788e151f4aaf6963a49c8d366ab91263e640d98b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.59/stakpak-darwin-x86_64.tar.gz"
      sha256 "9afea213fbd1ffc329fc07f7d27098531e1b38a6ffead6ccc0e93b2a02b17094"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.59/stakpak-linux-aarch64.tar.gz"
      sha256 "a05a0a8530cfad2bd1f6dbab9bfe4d2c652c18634efaefd6d6795176096e9044"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.59/stakpak-linux-x86_64.tar.gz"
      sha256 "6a0322d6113419578b38b862e73e5f7ad2e964b04d498048b6408df39aad2b5c"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
