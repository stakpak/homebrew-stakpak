class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.85"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.85/stakpak-darwin-aarch64.tar.gz"
      sha256 "4a5c8518290af2730d136cd5b687b2669ccece33997216de690a0a393b93335b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.85/stakpak-darwin-x86_64.tar.gz"
      sha256 "a46e27a5d56539a52cb696e1de6d0917c4d6e782ca99b72951a4412a3717f13c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.85/stakpak-linux-aarch64.tar.gz"
      sha256 "6978bfdf94a835cc49bd15f95ba5267c27c7264b7056fb6a5d7b8293c0094ac3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.85/stakpak-linux-x86_64.tar.gz"
      sha256 "ba48db8905736d9e0349c146d82ce3a15bbffe951c550a782c2d1a494c88bdad"
    end
  end

  def install
    bin.install "stakpak"
  end
end
