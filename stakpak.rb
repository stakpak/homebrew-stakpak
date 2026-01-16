class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.14"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.14/stakpak-darwin-aarch64.tar.gz"
      sha256 "eea82f091a1367d4f71ca4cd590e998aabf2b71c0dc058f793e3cb7fe960e276"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.14/stakpak-darwin-x86_64.tar.gz"
      sha256 "a5b91c86ae208d51b7ad90abb5546c01f05b244547c4ba661cdaf0949b9dd3a5"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.14/stakpak-linux-aarch64.tar.gz"
      sha256 "17c1eef9763a5401ad0e9f50fab2e5cd5bcf3bc19b89a867b18409dea6a7b78c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.14/stakpak-linux-x86_64.tar.gz"
      sha256 "ebb7a95f24982e35c326116fe8ca26b723ba97da8b1e593fbd09c20c02bb0b20"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
