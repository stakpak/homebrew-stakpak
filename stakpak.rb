class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.101"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.101/stakpak-darwin-aarch64.tar.gz"
      sha256 "72cd62141786414675be198a4af0946a6e96a28825821605df50068381826e5e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.101/stakpak-darwin-x86_64.tar.gz"
      sha256 "16be356e9aca67eac0d177d234b73ad679a05a58f1105dcfc35c320b45ef5840"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.101/stakpak-linux-x86_64.tar.gz"
    sha256 "7acdafa89c72b334f80aaac0a36ae29dd05498077f857f780f1ae4d3e8bb25b6"
  end
  
  def install
    bin.install "stakpak"
  end
end
