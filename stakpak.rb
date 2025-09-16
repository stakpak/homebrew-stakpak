class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.45"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.45/stakpak-darwin-aarch64.tar.gz"
      sha256 "20a8de7ee71b1ed70c8215f9cad3da9cede65875f369e6d3b5837aa0dc7ece1e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.45/stakpak-darwin-x86_64.tar.gz"
      sha256 "576aa469a63a183f197e11db470068413301fce7c52caa6a0cefb1b1c9d1dccd"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.45/stakpak-linux-aarch64.tar.gz"
      sha256 "dc6760f164ceff67169b40f8c1d6aeb4d040a871a57cc5b8a2d1e9872505d328"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.45/stakpak-linux-x86_64.tar.gz"
      sha256 "1d8df1a7f778cabdb0393dfd73c4291b4d8a366e49ef1f9226457993de8e29a9"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
