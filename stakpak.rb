class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.99"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.99/stakpak-darwin-aarch64.tar.gz"
      sha256 "8fd6c42fbda4311993977e699706f477c20ca1fccb12e2fc3b09d74e19b50e89"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.99/stakpak-darwin-x86_64.tar.gz"
      sha256 "4bca89412bf6249c2347b40af119ccbc0571bc97d2dbd499ccc68e834bfa7719"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.99/stakpak-linux-x86_64.tar.gz"
    sha256 "18cca6535590831a7b3262f38eeec525eacb25eb01a2c910eae6ce187860872f"
  end
  
  def install
    bin.install "stakpak"
  end
end
