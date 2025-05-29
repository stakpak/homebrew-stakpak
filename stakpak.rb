class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.77"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.77/stakpak-darwin-aarch64.tar.gz"
      sha256 "fcbd5bdfc17227f90e856f9204c6ab1bef65548e494aaec17173868826d08a44"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.77/stakpak-darwin-x86_64.tar.gz"
      sha256 "f89a1f979a5f985346ab0f8f7085f683b831e154b93ce39223953b09e5f11cbf"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.77/stakpak-linux-x86_64.tar.gz"
    sha256 "d0a417c36f26e312e2645c5b6bbe2ea4ba0bb2bf375d311ab7c4df54c9ad60d0"
  end
  
  def install
    bin.install "stakpak"
  end
end
