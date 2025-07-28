class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.2/stakpak-darwin-aarch64.tar.gz"
      sha256 "034adf5e415f8b78e49a01d924102f7046873cf20f853463c99937a5973f6806"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.2/stakpak-darwin-x86_64.tar.gz"
      sha256 "56adc3fd638f4a349082af88172d50161130f0892c0285908dd0ba292d3b1a79"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.2/stakpak-linux-aarch64.tar.gz"
      sha256 "4e96eb75b24d1be1bedea40e220ebda3bf81b7b21e53619ca98cb655a010bd2c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.2/stakpak-linux-x86_64.tar.gz"
      sha256 "a7f174c8340f8c0d16ea00f993972e073991cbe5f7c08551c95da2d90f4b1ba1"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
