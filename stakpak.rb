class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.15"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.15/stakpak-darwin-aarch64.tar.gz"
      sha256 "e4e7ea509224494e965e75d6c01f1ae176baf8ab1df22df8048a6e041b543528"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.15/stakpak-darwin-x86_64.tar.gz"
      sha256 "b4b25c693747431961844571ccb85c5d1593820842dbeeb1b305b6245c94f5ca"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.15/stakpak-linux-x86_64.tar.gz"
    sha256 "019ab8793a71e296ca1c36b81b80acd1ffa8ce8bcfc55e2c9f9cc0ee322a9a3f"
  end
  
  def install
    bin.install "stakpak"
  end
end
