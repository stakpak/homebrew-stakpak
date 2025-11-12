class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.73"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.73/stakpak-darwin-aarch64.tar.gz"
      sha256 "6d1822b3ad8c1c025aa886f9ff637f2d13bd80cd0d044b300be42e259c28e943"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.73/stakpak-darwin-x86_64.tar.gz"
      sha256 "ce4b3fd0f42b1b1cce2b1bb074de41aa289c8a2a9a0804917c4495d51c57bccf"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.73/stakpak-linux-aarch64.tar.gz"
      sha256 "a503900a069a63a7b5cf371f6e8019097548f3e37ca7cdee184221da85552ca1"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.73/stakpak-linux-x86_64.tar.gz"
      sha256 "7ccc3360c6adbb125d01dcf08c738eac393d7705af95666c2a8c5b121f64c2d9"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
