class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.118"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.118/stakpak-darwin-aarch64.tar.gz"
      sha256 "1036d91cdd4b2db97e304e5218d5dbffbd2d85b071099c896e6bbad13b52b2cd"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.118/stakpak-darwin-x86_64.tar.gz"
      sha256 "94db40efd30674c9ff371a7ac811e978b28669405894ee35ec4f38a2a75226ff"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.118/stakpak-linux-x86_64.tar.gz"
    sha256 "08daa50e13267a2ed7bb98452d09b323b2563abc94b31ee380ee5daaab4bb724"
  end
  
  def install
    bin.install "stakpak"
  end
end
