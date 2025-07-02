class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.117"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.117/stakpak-darwin-aarch64.tar.gz"
      sha256 "d04a77b1d874df8eb3602e103cfe3271010b8a48549d4bc308f88e52dde35246"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.117/stakpak-darwin-x86_64.tar.gz"
      sha256 "7ba842a199074cadf80088200ba5351f8c299bdebc55b46479c46fb38aeaf050"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.117/stakpak-linux-x86_64.tar.gz"
    sha256 "afbb812b96bda659b9b1b29af083790200ef0371efeb3f4a7849f1439b57c923"
  end
  
  def install
    bin.install "stakpak"
  end
end
