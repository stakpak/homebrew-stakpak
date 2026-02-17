class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.48"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.48/stakpak-darwin-aarch64.tar.gz"
      sha256 "14b25064527abf9eee8bb5ec2677c5ef3a862be39892b2230e4038b9ed69dbf6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.48/stakpak-darwin-x86_64.tar.gz"
      sha256 "5faf69ad0bd26d98f4ae0058021d60f1362387f1e22b5f40234a200fae8f93a4"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.48/stakpak-linux-aarch64.tar.gz"
      sha256 "e811620a459cddc483b10f521108bb43f8c446faeb42c1fe72cd076a845e8518"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.48/stakpak-linux-x86_64.tar.gz"
      sha256 "1488be3982c59a060befd72f03fffae5078368e40d28018cf01552166062f232"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
