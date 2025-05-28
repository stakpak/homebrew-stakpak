class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.71"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.71/stakpak-darwin-aarch64.tar.gz"
      sha256 "ddfe6d1945e24d6fb8b75dde97e31595ff4fc8bafaf6901baaf0a34ae3e77e97"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.71/stakpak-darwin-x86_64.tar.gz"
      sha256 "bfb6cdba99701be052b477e320f8c46e7541f02be10ce6c8698ebd3fb706ba44"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.71/stakpak-linux-x86_64.tar.gz"
    sha256 "f43ece1c796fd758b2def99b5fe43e45368cdbf6a2da1084356a4220726c24a1"
  end
  
  def install
    bin.install "stakpak"
  end
end
