class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.94"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.94/stakpak-darwin-aarch64.tar.gz"
      sha256 "a7ac616e9d0e71e21a239839ba0e739b68cd679dfbe1f573b83fdf226ff49991"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.94/stakpak-darwin-x86_64.tar.gz"
      sha256 "30105f961005c8c99605f0ff1dbb91dde33552c596f722c0912267d37686e0e1"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.94/stakpak-linux-x86_64.tar.gz"
    sha256 "e895e645bcedf2ac8122291dd8b0f35d193cae4f633eda0f8e9c25b5443b0fb5"
  end
  
  def install
    bin.install "stakpak"
  end
end
