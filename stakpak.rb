class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.53"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.53/stakpak-darwin-aarch64.tar.gz"
      sha256 "672cc4aba4ee514d90b6c8bbcc5e0d42dcea50bdb9ec130dac0f27e5062bdab2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.53/stakpak-darwin-x86_64.tar.gz"
      sha256 "c8032c06ef1cc5f3ae80e7d15c61d366624ebb031d4ab793a9f9615e331c66c1"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.53/stakpak-linux-aarch64.tar.gz"
      sha256 "434582672f794b88b62e4ae5fbff13a3a8c193d7a24b921bb3fd790f092f20a5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.53/stakpak-linux-x86_64.tar.gz"
      sha256 "290071eb94ec9b9f823feda95a60669c5ee613465369dcdebf72628a923a537a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
