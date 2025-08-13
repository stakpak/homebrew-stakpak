class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.17"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.17/stakpak-darwin-aarch64.tar.gz"
      sha256 "4fb636cb1232702036963d56097bc11934a17c6b24308a4e1ae3cbd77308df99"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.17/stakpak-darwin-x86_64.tar.gz"
      sha256 "4bbd8991699aee804b95a72b288f25a9fbfcb138729cba33bd40c268034cc583"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.17/stakpak-linux-aarch64.tar.gz"
      sha256 "49ddddbc0dc18b5b96b250d532765b6e0c1ba624f1e9b8e6380e124281a7ce78"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.17/stakpak-linux-x86_64.tar.gz"
      sha256 "faeecbb18565ec28720f34ef84bc62df255b9b9087efaeca10d84c523234efe3"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
