class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.67"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.67/stakpak-darwin-aarch64.tar.gz"
      sha256 "923b7a7d574e34be3f01e83b06921acd196e7fcc8758ecfdceb7f3246c56b894"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.67/stakpak-darwin-x86_64.tar.gz"
      sha256 "241d42debe05a1829db670051e885ad1a917ef10ee6e8ba50829c17f86f6e286"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.67/stakpak-linux-aarch64.tar.gz"
      sha256 "f208d6f640ce19fd05a79a74ce444bc84c93f47e53f37834ca74c42e2ec4ef57"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.67/stakpak-linux-x86_64.tar.gz"
      sha256 "9b909785270cd778823bf3783829b714efba01faaf7fb57952127873df9ad843"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
