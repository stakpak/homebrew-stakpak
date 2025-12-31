class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.6/stakpak-darwin-aarch64.tar.gz"
      sha256 "77790ecd5cb82d360ede2d782d6c16557f7240129c052697847d4ee54d3133b9"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.6/stakpak-darwin-x86_64.tar.gz"
      sha256 "4771efebf0b1636ff6df08ff1533582719f7501f3867891d97c6687a5f313aae"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.6/stakpak-linux-aarch64.tar.gz"
      sha256 "433a93156214aa4bd60d909078079af54f8ef42fe3e9216ba9212483fc5b2dc2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.6/stakpak-linux-x86_64.tar.gz"
      sha256 "4536744951a23a7e9acdc70e2a7142fb054ad26d2be6f1f5c5031e969c8bbf8b"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
