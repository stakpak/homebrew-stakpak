class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.46"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.46/stakpak-darwin-aarch64.tar.gz"
      sha256 "9028b4c2a250a97f5bed2481fa912e0b9c437fca4826f13e2a08a11d0fcaad3f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.46/stakpak-darwin-x86_64.tar.gz"
      sha256 "b798a6a504f45c102200c584367d7273954c7379e36725d6b04e77ae360379e1"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.46/stakpak-linux-aarch64.tar.gz"
      sha256 "8f818f1e98b02e5037ed755b528bbe51645684e947927fd8fdb47dfcf733e817"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.46/stakpak-linux-x86_64.tar.gz"
      sha256 "3d89a05eb9535ab1cb4548623efa6d9cc1dd59457f38dc075d5e7fe442779e11"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
