class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.51"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.51/stakpak-darwin-aarch64.tar.gz"
      sha256 "b039368b21e2f98a33d600d7e49f302b70ca62f7f321554a03b8373fb982ec11"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.51/stakpak-darwin-x86_64.tar.gz"
      sha256 "ad2fa17a6a16ab2131fd9896eaf515a8d54eb32b0a2b6acf19b362f20cc05111"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.51/stakpak-linux-aarch64.tar.gz"
      sha256 "9f36e12bb453840c04a900def2562f3c00001d7058e7e51c1f54a9e4507ff1e4"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.51/stakpak-linux-x86_64.tar.gz"
      sha256 "f82c9e78905913e1a9ed5cc1c534878827fcaa5ef56f269f2330c1f246a9f9f5"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
