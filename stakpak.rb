class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.96"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.96/stakpak-darwin-aarch64.tar.gz"
      sha256 "cfc3f12f34145c02e911a248b36cf9fc1826152c7bf785b19f092c787f3dc410"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.96/stakpak-darwin-x86_64.tar.gz"
      sha256 "f3d247c396769cc1ced14e6f0f53d9d33822013dedbf4a73b04eca145cb6afb5"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.96/stakpak-linux-x86_64.tar.gz"
    sha256 "d7623fed886544256c920d0e1adac033e09a5d73cf89185cd165283016f44180"
  end
  
  def install
    bin.install "stakpak"
  end
end
