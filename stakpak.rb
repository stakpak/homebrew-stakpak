class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.62"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.62/stakpak-darwin-aarch64.tar.gz"
      sha256 "7c0e79bd1aa332ff376f902616a08f7e47defba19913c9af94f8c9654540b68c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.62/stakpak-darwin-x86_64.tar.gz"
      sha256 "0f085f36e973006814adea533c42f38dfb389419b3a69aff07478c396fc61539"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.62/stakpak-linux-aarch64.tar.gz"
      sha256 "3bc82df11d552c8134436fd0d752cda0f551932d9e80f038110f0c3ec0e39232"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.62/stakpak-linux-x86_64.tar.gz"
      sha256 "7f6d936dae7da64b45acdadef654863f2d47866660c6cf821430707bbf63c4cd"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
