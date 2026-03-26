class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.70"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.70/stakpak-darwin-aarch64.tar.gz"
      sha256 "3b169af71cac34d999d383e71aa8865604cbaed4d6357c086d5bc3773d5fb0c3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.70/stakpak-darwin-x86_64.tar.gz"
      sha256 "52be8963764634e6cb1bc597c3f00cdf4a36ff002a87e8f195eac6470a4a4f0b"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.70/stakpak-linux-aarch64.tar.gz"
      sha256 "4985a1659c3809180f0554fff3fcf107f1a09649ca60518496439a3ef3718b1f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.70/stakpak-linux-x86_64.tar.gz"
      sha256 "fcd5f772ee45947287c0a90165b08369575ecb866c50ca832d8797b1b27541e5"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
