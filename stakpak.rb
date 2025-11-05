class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.68"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.68/stakpak-darwin-aarch64.tar.gz"
      sha256 "8ab7dbce291a2cbb8dd846fdf2342be3687c22e5088c0945b32bf6104de9f92a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.68/stakpak-darwin-x86_64.tar.gz"
      sha256 "398b4b3a22da6f59676541f9962b66531442c1aebc0662eea9e6e95e35c76895"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.68/stakpak-linux-aarch64.tar.gz"
      sha256 "5f67d95bd07ab74fe1f655198a122c01e4c68393656b348488d98d0fe556eac3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.68/stakpak-linux-x86_64.tar.gz"
      sha256 "2579ee06590ce9878e7e0268a56132d2171b6628b50341a1a8e976b7238c0057"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
