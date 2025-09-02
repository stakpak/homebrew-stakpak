class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.37"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.37/stakpak-darwin-aarch64.tar.gz"
      sha256 "804518db9ac3d2478f6fea04bf4c8dd82261ed5d355113d29fe212c298fb8558"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.37/stakpak-darwin-x86_64.tar.gz"
      sha256 "913c9b75f80edb5b8e88b464abdfce254ef4321296cde1396d8f6862996c9299"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.37/stakpak-linux-aarch64.tar.gz"
      sha256 "554193382f392e28f79b9c87373fe59232fed7ea530c0512893027401dc7f7d2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.37/stakpak-linux-x86_64.tar.gz"
      sha256 "b22e6c7ff886d7c5e2b5065871f0f869c7d3519d8425b7c16ad06e13792c2692"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
