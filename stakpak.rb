class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.18"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.18/stakpak-darwin-aarch64.tar.gz"
      sha256 "b4ce7b2f19ceff6bb8716d9a96dad5133fd92b1e8a69502b50175e3d2f3fdb9c"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.18/stakpak-darwin-x86_64.tar.gz"
      sha256 "224e4ef26281f8f16e3069d627fcb038dfddcc011e9deea9abf35dcdc8fd93d2"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.18/stakpak-linux-x86_64.tar.gz"
    sha256 "481044e8e388fa09971184d2fdbb0fe13bc616411b4c6acf620512922bdc92fb"
  end
  
  def install
    bin.install "stakpak"
  end
end
