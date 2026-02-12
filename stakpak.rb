class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.40"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.40/stakpak-darwin-aarch64.tar.gz"
      sha256 "d8df00f6d9725212e3239ce145948dc31bd0bffc9bed80200ce2dca1fc5f1ac8"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.40/stakpak-darwin-x86_64.tar.gz"
      sha256 "7e77c537eae9914574143a92be757652fde364e0194cec251067ad52ca1688ac"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.40/stakpak-linux-aarch64.tar.gz"
      sha256 "6223e5cf45050606f8ae008a5acc2f4eb70a6655851dfc6c96333230c2ff9f32"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.40/stakpak-linux-x86_64.tar.gz"
      sha256 "cd19e23c4fa9c6d6875f0456c5df2d4c5134a0de74e6afa3bafcfbc3aee42f8a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
