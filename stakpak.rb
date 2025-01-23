class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.25"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.25/stakpak-darwin-aarch64.tar.gz"
      sha256 "566493ae32cdf7ff8bfbd86d4a12b7a2fccd624650adf1238b1264e2c3b81612"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.25/stakpak-darwin-x86_64.tar.gz"
      sha256 "b8093944efdd79f7a9aed4be8c2536288616bcb72356f3449fc62ba3dde0dd8c"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.25/stakpak-linux-x86_64.tar.gz"
    sha256 "ea87cdb0ab9cd06a0e3de2d6b0befeee6188f7ed632d8093cbb9635e4a69cdd2"
  end
  
  def install
    bin.install "stakpak"
  end
end
