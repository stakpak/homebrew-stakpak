class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.72"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.72/stakpak-darwin-aarch64.tar.gz"
      sha256 "08c29446e8b914b82938fda34b5c6661a57e69cc3577f924dbb899332ddaa4d7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.72/stakpak-darwin-x86_64.tar.gz"
      sha256 "27e7514c0b6381a47b9c6e37f729acfddeff8535a3edc9de61d69c012a481fb0"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.72/stakpak-linux-aarch64.tar.gz"
      sha256 "3dbfdcc921901a5a647e50d3f356112b5011675dea4afc5358ed63225b7e88aa"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.72/stakpak-linux-x86_64.tar.gz"
      sha256 "51945df56c5994d1cb1125794af63c12b25c1a9639cffd85b33cbecf59403550"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
