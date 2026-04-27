class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.75"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.75/stakpak-darwin-aarch64.tar.gz"
      sha256 "5ff6fdcc73f429cc7f9e8c92319d3e1b7eec018f94345a3ceccdd888f1b32cfe"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.75/stakpak-darwin-x86_64.tar.gz"
      sha256 "5fc3da8e51603f41d832c37fb16913cadbc319114c87f65d4045df8512ad24bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.75/stakpak-linux-aarch64.tar.gz"
      sha256 "6e66f6042a01133a539a8dc7cbbae4c2f1399749ebc59663ea8c5f4f90b67444"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.75/stakpak-linux-x86_64.tar.gz"
      sha256 "7b5bc5479058a3d86d48e6680317a7b7ad88872a24a386e944aba88cfaced2b4"
    end
  end

  def install
    bin.install "stakpak"
  end
end
