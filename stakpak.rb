class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.19"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.19/stakpak-darwin-aarch64.tar.gz"
      sha256 "ebdb55add9dfaf687dfc36b30e41909af02d81c46b83187b365efbff7338d51e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.19/stakpak-darwin-x86_64.tar.gz"
      sha256 "8f2ee109f95dbd45986170797566716a3fe3055ea186e222acf4f6e343a0c210"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.19/stakpak-linux-aarch64.tar.gz"
      sha256 "1b1f26174096a3c3c19c0ed8013a56e0024920cf955739dac100001c1ad01f1d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.19/stakpak-linux-x86_64.tar.gz"
      sha256 "591e8a359366d10f228f6c828c315719864dbfa4e2330f9494523ead71ff454b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
