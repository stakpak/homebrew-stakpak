class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.148"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.148/stakpak-darwin-aarch64.tar.gz"
      sha256 "2b6c9cca8d0ba238567a11686f450db2d0d5c23586b2e590adb92349a0bdc242"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.148/stakpak-darwin-x86_64.tar.gz"
      sha256 "002dafc5765e22b3073fcf956c645c4f0fe32e0e06ed7312ae14bca6de8b874f"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.148/stakpak-linux-aarch64.tar.gz"
      sha256 "7544439c36247eab6324965350020ee16f7ed697c2d7de14b83497f6af4fb700"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.148/stakpak-linux-x86_64.tar.gz"
      sha256 "b59c743ed739c356583a4836bbdbf8710e5024f98aa68d625b1fc0ccee49b36a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
