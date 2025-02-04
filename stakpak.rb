class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.30"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.30/stakpak-darwin-aarch64.tar.gz"
      sha256 "6075c56a0af0dbbb6c2f015456d63e693d66bcee5d196436253b76852deda706"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.30/stakpak-darwin-x86_64.tar.gz"
      sha256 "be08a1afcd626a6b7b3585d585e11701cdbedf7428d60766ffaa7a807cedc40f"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.30/stakpak-linux-x86_64.tar.gz"
    sha256 "ac050853901532816c524e456d7788fb734859c34c798b59fcc1b1099294ccd3"
  end
  
  def install
    bin.install "stakpak"
  end
end
