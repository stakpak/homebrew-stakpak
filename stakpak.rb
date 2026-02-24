class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.61"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.61/stakpak-darwin-aarch64.tar.gz"
      sha256 "8849c654305763fd6d18a1039dc2c69d2cb9fcf6b92f2a98e58cadeb6126a3e7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.61/stakpak-darwin-x86_64.tar.gz"
      sha256 "6c740e0b237c922431ee0e0f0a1e2c3b0598328ec35ad645249d32b98e724ba6"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.61/stakpak-linux-aarch64.tar.gz"
      sha256 "8e9487bdd28660ef1d68015750c66090fbd7e1e5e5250d4590c234b7ea4cf121"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.61/stakpak-linux-x86_64.tar.gz"
      sha256 "c8a1c7979bd238ae6280052ba1d1326229eb7b7602949579c8f745bf2c4cdd8d"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
