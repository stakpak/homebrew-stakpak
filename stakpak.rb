class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.50"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.50/stakpak-darwin-aarch64.tar.gz"
      sha256 "ab6b33bdda350c6ed507dc6fd72afa8f7859ebe36e93badd06b2070211eb53ae"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.50/stakpak-darwin-x86_64.tar.gz"
      sha256 "dea5bb02852a7d55275c7933932224fd443f509fea1d2fdeacdb9f3aeba7ce65"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.50/stakpak-linux-x86_64.tar.gz"
    sha256 "1805c8e84806292f583be648e3788099ee8a6073cd064447c67bdc9cd30048fe"
  end
  
  def install
    bin.install "stakpak"
  end
end
