class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.22"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.22/stakpak-darwin-aarch64.tar.gz"
      sha256 "e6a472ddf117edada2c95dd8d993ec663d3a24af2ba40ef372f99be8fb0cbc71"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.22/stakpak-darwin-x86_64.tar.gz"
      sha256 "f433e0c6aceca4056287757f5f730303a53d2f9a996e50c1ce3a202f95206db7"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.22/stakpak-linux-aarch64.tar.gz"
      sha256 "cc262b76cfff39253c6ba4a0e0cb5cd3cd7cbdd9a4370192ec949aa8f942c284"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.22/stakpak-linux-x86_64.tar.gz"
      sha256 "9f374719db62682137b6752376abacd3559a3ac77ca1b64250df88fea598d176"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
