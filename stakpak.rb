class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.137"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.137/stakpak-darwin-aarch64.tar.gz"
      sha256 "7f2499a54cb26ccdf3c921120dd1d4eba061242f33d39902ea9b9c3fe13d3f4e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.137/stakpak-darwin-x86_64.tar.gz"
      sha256 "1a295b94ba17e6c26c6c7208330545f21b6518337fbb211bfc189a700ac39b09"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.137/stakpak-linux-aarch64.tar.gz"
      sha256 "ec9649d69f012be04a52d29dc76fb461337f758e85ce15d4506f855e7b1205b9"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.137/stakpak-linux-x86_64.tar.gz"
      sha256 "eba0164ce174e7dd6da8de39ad199314272caf2ef080aef13f638c632053f19e"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
