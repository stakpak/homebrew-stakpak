class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.78"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.78/stakpak-darwin-aarch64.tar.gz"
      sha256 "bff3bd78a5c446dc2d68a512b0f0fe13d959175c29120152c61955d4a491499a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.78/stakpak-darwin-x86_64.tar.gz"
      sha256 "bdf4bd9f027e69907dc28faa14d487520f45de2e7ceb37d5bc9401d49d3dcebc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.78/stakpak-linux-aarch64.tar.gz"
      sha256 "b7e39ee16e41cf8cfebff1bd18f5c8975b7841de94ccc33e851fb9b11acb0bdc"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.78/stakpak-linux-x86_64.tar.gz"
      sha256 "05b77997384cf0e96a544affe4286349deead3b2071924956835a8587125e3d4"
    end
  end

  def install
    bin.install "stakpak"
  end
end
