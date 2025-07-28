class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.1/stakpak-darwin-aarch64.tar.gz"
      sha256 "ac3e3959ccbadf5376a0cab893eca41f549fb6b23210b08f2fadf78b2f1e755b"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.1/stakpak-darwin-x86_64.tar.gz"
      sha256 "8ebee45c10997c80ff39b12b59079fbeded66f6d828d2798e3796f2b143246bb"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.1/stakpak-linux-aarch64.tar.gz"
      sha256 "674268f1954b05baa9cfd615263cb2df2ea710c336f3719db249e93df77ecac7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.1/stakpak-linux-x86_64.tar.gz"
      sha256 "ae7324b483c428ec1769347e8819ee9453cd09d41e285f335444012e68b9649b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
