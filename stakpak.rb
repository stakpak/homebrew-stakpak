class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.26"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.26/stakpak-darwin-aarch64.tar.gz"
      sha256 "a5adee21aa66a4b22322f715cfc728363ff8dbe5662b4b3dec8cabcdce91800d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.26/stakpak-darwin-x86_64.tar.gz"
      sha256 "28bcdd63a30c61da36281f037b695953d6877efd87e012f745690e6173daea61"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.26/stakpak-linux-aarch64.tar.gz"
      sha256 "5d6281a3d6dbc68d8d4fc593f7f58622a865f51298b264de14bd45e796a4e056"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.26/stakpak-linux-x86_64.tar.gz"
      sha256 "86fe364bfc02562efb5466fdfd8ed62eef88e90b3f7e5789486dcca718a4e290"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
