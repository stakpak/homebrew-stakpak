class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.46"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.46/stakpak-darwin-aarch64.tar.gz"
      sha256 "9b1b32350bffc5691fa1dbeef5ff6b748322e267ebe73f62331a824a96876b36"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.46/stakpak-darwin-x86_64.tar.gz"
      sha256 "b368e1e1af9ec45e34025825918e0a35ea136f2265abad0cd55454004a5c84ba"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.46/stakpak-linux-x86_64.tar.gz"
    sha256 "d9219a09bb1f3fb880d5960ac1e7fa5105f098606518e645bd68f3d9f5858d50"
  end
  
  def install
    bin.install "stakpak"
  end
end
