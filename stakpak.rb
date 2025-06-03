class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.87"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.87/stakpak-darwin-aarch64.tar.gz"
      sha256 "56d7eff6d2e0bd74a67633b549903aacdc56d21d24300b4a6e85d61ca63c2bb5"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.87/stakpak-darwin-x86_64.tar.gz"
      sha256 "3f6f046911e050d23c53ae07ae87a023dce732685ca8c36b04ec0ad6fa8ed42a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.87/stakpak-linux-x86_64.tar.gz"
    sha256 "dff0429c6689ccd89c4e9ea31181eb1593eb1e8fcd01c07fe7b322f04cd4164c"
  end
  
  def install
    bin.install "stakpak"
  end
end
