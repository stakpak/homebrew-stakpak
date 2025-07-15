class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.136"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.136/stakpak-darwin-aarch64.tar.gz"
      sha256 "4bae3d5302e6ac7eaf8863c22c3625579d75f123b719f3285cefe07c38e78774"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.136/stakpak-darwin-x86_64.tar.gz"
      sha256 "68e3957e0ff2195246178a7f537782066072bf767a2e058a5d3341b7aae0cc22"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.136/stakpak-linux-aarch64.tar.gz"
      sha256 "7116f60b82939e93dbc0d2bceeb4d0f262c09a21d6f1b77a1a95bbb5e1244dd3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.136/stakpak-linux-x86_64.tar.gz"
      sha256 "706cd45edc13a3303e269ed795d91a6b058a9b1ef5de62213a54fd1452eed39e"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
