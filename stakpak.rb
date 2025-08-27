class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.31"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.31/stakpak-darwin-aarch64.tar.gz"
      sha256 "e04e2e8b9343161a3101b0fbb64447d1d404f07e6fa7b30f6a6362ed98af4a7c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.31/stakpak-darwin-x86_64.tar.gz"
      sha256 "bd8982e9f1fc6b81a3fd833550cb5821970108d03bbb0173ea0409fbb0126da4"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.31/stakpak-linux-aarch64.tar.gz"
      sha256 "648fb544f239ca3dae482528a93f637e79671f5d18f035905f3e18444e4d5609"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.31/stakpak-linux-x86_64.tar.gz"
      sha256 "b6d3f6f0ec38981bf4b98af9ac7adfe5d93aa59e1db39c8ac88796cabc2b746d"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
