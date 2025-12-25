class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.8"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.8/paks-darwin-aarch64.tar.gz"
      sha256 "719cb6ef576ca6cdefe7f4fd045d0773bf168544d4e3b6ad7ca2e038cc6a8758"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.8/paks-darwin-x86_64.tar.gz"
      sha256 "136256b34f710dcafa17418a88d9b51678f809f30da3957df006ddc5f09c955a"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.8/paks-linux-aarch64.tar.gz"
      sha256 "f54433c816ccbf7d7ea4b1d110ed7afd79081f9111ee8706d1179a12f47c47f2"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.8/paks-linux-x86_64.tar.gz"
      sha256 "3b4facc1d4c26cce6a5d04c3aed5fe02b2df0e4c9fa4a1cde54bf911e0eb8a46"
    end
  end
  
  def install
    bin.install "paks"
  end
end
