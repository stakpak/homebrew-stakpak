class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.5"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.5/stakpak-darwin-aarch64.tar.gz"
      sha256 "2ebc05bbb862021f8b3762ee1eb633e76a4b34e30e18e3c6e222658ff158980a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.5/stakpak-darwin-x86_64.tar.gz"
      sha256 "ca1b3bcc45f2141c8ef4a9f7cbd1adb8599d51692b68c7b7eec6fc69ee0b594d"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.5/stakpak-linux-aarch64.tar.gz"
      sha256 "5a70d29c1cae572fef6aba11c14674e72e8331ed411b02267d0c5128254d87cf"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.5/stakpak-linux-x86_64.tar.gz"
      sha256 "e32c87b59028666dd05ae43425152805a2b96b44de1f86f900ceac22aa5a201a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
