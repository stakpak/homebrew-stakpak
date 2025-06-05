class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.90"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.90/stakpak-darwin-aarch64.tar.gz"
      sha256 "b2ed0c581a45f80bbf2b705d5229a8b1635fca22048df0600c685bce244164fa"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.90/stakpak-darwin-x86_64.tar.gz"
      sha256 "2688e74033435d475ab9dc606b28fb5256e503db076f7ebb1664f21af34da619"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.90/stakpak-linux-x86_64.tar.gz"
    sha256 "32b563f620c0a8ce9f63300099337f994b94ed14fa8beb2895fb3a32f5b12db0"
  end
  
  def install
    bin.install "stakpak"
  end
end
