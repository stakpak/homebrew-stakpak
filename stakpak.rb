class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.23"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.23/stakpak-darwin-aarch64.tar.gz"
      sha256 "f497e83dc90d82ad81a981f4d366e9a8abb4c0389dc8e0c66787491413c593e5"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.23/stakpak-darwin-x86_64.tar.gz"
      sha256 "d81ff8180b2eb59772992c0ba78e3f772661a3449bc092e865c57b4e0abf72c6"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.23/stakpak-linux-x86_64.tar.gz"
    sha256 "f32358e8ff0a10d671e9267d58e80f1537f8215a2b1b77c656ddecc24dc05143"
  end
  
  def install
    bin.install "stakpak"
  end
end
