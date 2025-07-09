class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.129"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.129/stakpak-darwin-aarch64.tar.gz"
      sha256 "113acaca683d61fbb2bf9673c6fbcce1a4c03b7baae8128d9e54f5e316bec961"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.129/stakpak-darwin-x86_64.tar.gz"
      sha256 "3c367f0bb0bc6e29551e710f709ba7f2fb9d77d05188d55bda001328c12b50c2"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.129/stakpak-linux-x86_64.tar.gz"
    sha256 "f1f3047bf139f455b47c1a11de15c71be21c1273157788e139501fdcc51b25a1"
  end
  
  def install
    bin.install "stakpak"
  end
end
