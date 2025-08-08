class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.15"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.15/stakpak-darwin-aarch64.tar.gz"
      sha256 "c20a0302a1e631ead83e8c0a9f52b1b3e430b34d99223bdbf70c754ebdc331cb"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.15/stakpak-darwin-x86_64.tar.gz"
      sha256 "1e44f9ed6da2f6e9ea6dbf7b20c6073075ee602f65eace61c4976102bce929f9"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.15/stakpak-linux-aarch64.tar.gz"
      sha256 "ac1b4f4d13edb36ebef0fa9bd30af3997a0f794693342a8703854ff12712759d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.15/stakpak-linux-x86_64.tar.gz"
      sha256 "cb7a3ee6a13394e36f9d1422f65741afebdfa611b2f1a5a587414d9a435f6936"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
