class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.18"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.18/stakpak-darwin-aarch64.tar.gz"
      sha256 "962995aa547c1f8cd4d9048393a7188b51703ff16c3cb05eea6754a2045f0924"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.18/stakpak-darwin-x86_64.tar.gz"
      sha256 "01f60a4a9d729210d4499535612a95911d747d37385b0cbbe699632befb98da5"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.18/stakpak-linux-aarch64.tar.gz"
      sha256 "3e4d0b39df34f9c43e1aaeb38893fb895e6befe181b210c6bab3ed29d8dd943a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.18/stakpak-linux-x86_64.tar.gz"
      sha256 "78a6602600aa109b5eff97a8a59389f1310f6b423c52d5ceecd2dff207a1aff6"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
