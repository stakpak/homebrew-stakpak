class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.84"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.84/stakpak-darwin-aarch64.tar.gz"
      sha256 "65297c93d8573ba2589bfa7c55e1fd155391fc26db43ce1936fdbf39b3d62fcf"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.84/stakpak-darwin-x86_64.tar.gz"
      sha256 "a0143a27f9b52b95d6a1510471c4fa7803108dd6e587b6c05ca9234604540235"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.84/stakpak-linux-aarch64.tar.gz"
      sha256 "dbb933d681d5b10c119e7fd5a5da639318a6e7155ddb324f349898fd63019901"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.84/stakpak-linux-x86_64.tar.gz"
      sha256 "01a619c9beb039d616e8b11e5d97b57258bb01119fb1ff8c2db3a84f0f33a14b"
    end
  end

  def install
    bin.install "stakpak"
  end
end
