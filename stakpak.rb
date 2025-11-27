class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.0/stakpak-darwin-aarch64.tar.gz"
      sha256 "bedf1db3cbb6fbbcc07948269b0c306ab8b592a236520ce279c1179e5789a043"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.0/stakpak-darwin-x86_64.tar.gz"
      sha256 "9f366b497bdeeed51853f99e342abb448217a0f99de705ddbd96db3427780b3c"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.0/stakpak-linux-aarch64.tar.gz"
      sha256 "29e2dae002cb7a2ec5320bd61d60508e839914522f8885f89b7453b477ff55d7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.0/stakpak-linux-x86_64.tar.gz"
      sha256 "95d621fe20abdcc87ba0f18a16312645df4eea4a0d37dffc7d538c88e0b11ca3"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
