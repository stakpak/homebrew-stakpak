class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.86"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.86/stakpak-darwin-aarch64.tar.gz"
      sha256 "50b8e36f1dd644e34d64e8a2a141ca1c54242666af4345fae76d23e7242d2f23"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.86/stakpak-darwin-x86_64.tar.gz"
      sha256 "4ff4ddf8d3d93bbd6a6667b5c20f0cf6f3c1fb7688ddc82275ec4ba8b5e020e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.86/stakpak-linux-aarch64.tar.gz"
      sha256 "2a14b2623b0749159e520b1f0a8c4169321b6b4db391f0555537c393ded2bea0"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.86/stakpak-linux-x86_64.tar.gz"
      sha256 "8b8ac104800f0f65aa0b0388c22bec11dfc06a569c3687ffc00a8307347c423d"
    end
  end

  def install
    bin.install "stakpak"
  end
end
