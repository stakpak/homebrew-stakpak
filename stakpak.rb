class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.29"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.29/stakpak-darwin-aarch64.tar.gz"
      sha256 "18373a164861c69908d590612087e356a6af7ba1f3c744953adc49b9ade51eb5"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.29/stakpak-darwin-x86_64.tar.gz"
      sha256 "b9f97b4adb75205a8eae484157fec8f013c75fbaaa622dc51cad382505e36eba"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.29/stakpak-linux-x86_64.tar.gz"
    sha256 "3a3afe18ee7d236ecd948f4a2fd65f6ddcd1636af1213ecd0ae7f9eb80f77ebc"
  end
  
  def install
    bin.install "stakpak"
  end
end
