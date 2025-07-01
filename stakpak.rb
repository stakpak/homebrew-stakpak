class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.114"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.114/stakpak-darwin-aarch64.tar.gz"
      sha256 "3e26f6faa9cc9fc77cf7faa20e1beb552d0e19ddd79dedc60d8054b5c2db8f50"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.114/stakpak-darwin-x86_64.tar.gz"
      sha256 "f324e4752e844624880ab91fb88d5422dcd1c7fb64caac9f0d090c319f5fd3f0"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.114/stakpak-linux-x86_64.tar.gz"
    sha256 "612712fd18ab337d6d5033084940f6d159cc370687949bb6b996c950b530f5ec"
  end
  
  def install
    bin.install "stakpak"
  end
end
