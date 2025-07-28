class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.3/stakpak-darwin-aarch64.tar.gz"
      sha256 "0a27acfe9e4309c8b227d2f2123eeb194cd08d675d90f62ead58480dc85fea28"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.3/stakpak-darwin-x86_64.tar.gz"
      sha256 "0409c2d4064e2ee5ffb5a4a5527188cee0ca42fab3fb3de684c06c2dc4a4778d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.3/stakpak-linux-aarch64.tar.gz"
      sha256 "3311a616ce4655fcee213a28c7d38eaa4a49a0aa4466b0b25966aee67a6f1888"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.3/stakpak-linux-x86_64.tar.gz"
      sha256 "0499658e23246444c33235671b9201174ca32ed8e2376fdf2e16259eccf00e94"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
