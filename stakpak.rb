class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.146"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.146/stakpak-darwin-aarch64.tar.gz"
      sha256 "8a8e2ae65407a56897024499d6f006515d4f44e3e631be5365b7bc9a5bf6c5e6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.146/stakpak-darwin-x86_64.tar.gz"
      sha256 "b59f6e691058316288ea3173edc05124e41e0a202d8c8566224bb8abdb926978"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.146/stakpak-linux-aarch64.tar.gz"
      sha256 "77694127962bf5118b15d4cd579449fc120d5613c91353dcaaa4bc72ce2eb42a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.146/stakpak-linux-x86_64.tar.gz"
      sha256 "92c2a587f5642225d08ad3f1e17487084a81781d2313cd8a5fd212c8df72a233"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
