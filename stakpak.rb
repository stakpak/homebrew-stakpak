class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.88"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.88/stakpak-darwin-aarch64.tar.gz"
      sha256 "9c18808f7a3352a5ca2cbb9f123f2b2fafda03a5abef446c20065bb6ec629d1f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.88/stakpak-darwin-x86_64.tar.gz"
      sha256 "8f30de7df2fa267ec6e7d8ceecf6ed8f5dc7d37d4b489ef210070df3df38845b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.88/stakpak-linux-aarch64.tar.gz"
      sha256 "8312b611b5a635ea7411555f082b0fb3b6d644f99007d2c6a1f30fc6c13e725d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.88/stakpak-linux-x86_64.tar.gz"
      sha256 "1e923d6b632e6bda743b3f48c40914f657853478647c26d0a47729a7728490c6"
    end
  end

  def install
    bin.install "stakpak"
  end
end
