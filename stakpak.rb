class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.16"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.16/stakpak-darwin-aarch64.tar.gz"
      sha256 "b9cb6e6e727c0e507a839f246264f79cdded243cc05a0699cd25c126561e3f33"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.16/stakpak-darwin-x86_64.tar.gz"
      sha256 "8d20c788d65ec5ff63a31e2c75c974d8aed09e6eca6be04d4f76ebf2fb6f33f8"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.16/stakpak-linux-x86_64.tar.gz"
    sha256 "bcd78540e6fd7c9da1c9384a88b59b28fca21276a6e2fd00422a90748b23a109"
  end
  
  def install
    bin.install "stakpak"
  end
end
