class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.49"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.49/stakpak-darwin-aarch64.tar.gz"
      sha256 "6d54695f10156995b1258ba09d4bb94705e3b7b8830e2e7be5854bd4a70b9470"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.49/stakpak-darwin-x86_64.tar.gz"
      sha256 "d777aa620c4029205f50b819c9b33f4a700606e47ba7fab3b757f5fd4bc612a8"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.49/stakpak-linux-aarch64.tar.gz"
      sha256 "a9de866de6e56871693f84235aae77bed6baebdd19c5fea5692c8848479b7848"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.49/stakpak-linux-x86_64.tar.gz"
      sha256 "e8290acd0f949f87d009bcf43bbe1f5dd36dabb5dc2397de7aeabce78a7de961"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
