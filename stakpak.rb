class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.132"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.132/stakpak-darwin-aarch64.tar.gz"
      sha256 "88338ed56b6523cff3ed39243e58e38d5779de21dd4fc0a5a199cb874fea9e89"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.132/stakpak-darwin-x86_64.tar.gz"
      sha256 "718fe0a5e9d5028e2558bb7be43d6fa3633bec241749b1dcc8865cf83ff08cb7"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.132/stakpak-linux-x86_64.tar.gz"
    sha256 "2969bbd1400abc161198c86f99605bb16e6681f03096e072e7798961a4daaef8"
  end
  
  def install
    bin.install "stakpak"
  end
end
