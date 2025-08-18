class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.27"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.27/stakpak-darwin-aarch64.tar.gz"
      sha256 "97e1cbd9f1476415089626493ecc97dde5bcd7ab549b9ad53f5b7a82b8def378"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.27/stakpak-darwin-x86_64.tar.gz"
      sha256 "51c26613f34db11f4a5d380a2aa5d2b6d6d4521e6631df768b495f976cbdc952"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.27/stakpak-linux-aarch64.tar.gz"
      sha256 "44a9aa235f11af10dee2eae1082c00930405b66aff513b9f802f8ac5f178ed89"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.27/stakpak-linux-x86_64.tar.gz"
      sha256 "6dfd7a27b200cd039a6f9edf4d6e78ae5f91edae9c96e035a0f679fffbfec8af"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
