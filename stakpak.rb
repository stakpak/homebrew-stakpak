class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.122"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.122/stakpak-darwin-aarch64.tar.gz"
      sha256 "4ec6379286771efd7acfd7f49b9c1fa9e592d436aa1419effa858c0a634f69ec"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.122/stakpak-darwin-x86_64.tar.gz"
      sha256 "0393241774be9cbec4bfdf0fccdc0984fd65747d142180954c07ae918c4d08cf"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.122/stakpak-linux-x86_64.tar.gz"
    sha256 "01bf3ed85bfe747ca1953ababdbdcbcc3b60d7bc3a76e9e3d5488afd169e0cac"
  end
  
  def install
    bin.install "stakpak"
  end
end
