class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.115"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.115/stakpak-darwin-aarch64.tar.gz"
      sha256 "4312462347d1eeccc923cd8d81e1ed00312a87a03871ea1abeca53c9a9ad904c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.115/stakpak-darwin-x86_64.tar.gz"
      sha256 "70e446e8ae72fba6b71784ada5cf4af1cc2f04e53f0b8049f0e8440ff3ff777f"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.115/stakpak-linux-x86_64.tar.gz"
    sha256 "20a16886f4b3c08af5dacc6fd9f6a070254c28995b28c2df7b0413d6ddb3edfd"
  end
  
  def install
    bin.install "stakpak"
  end
end
