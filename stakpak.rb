class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.83"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.83/stakpak-darwin-aarch64.tar.gz"
      sha256 "b1ffb2b672cd68f44dd086679a39b4e907250052b16607e933b716e6628d7326"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.83/stakpak-darwin-x86_64.tar.gz"
      sha256 "4534798cfebac3f4de76b03895ac55e67cb62856b990d757ac936991348daa67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.83/stakpak-linux-aarch64.tar.gz"
      sha256 "0fdb8b25ae8e4a2a3d65bbb97cc4f7a10e0b54cda4c6b033c6c4f3e67eb1b726"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.83/stakpak-linux-x86_64.tar.gz"
      sha256 "99f7e431851b58e8f2a0952efc448afbc20ad5aa7d6fa18132ae34c55ea8143f"
    end
  end

  def install
    bin.install "stakpak"
  end
end
