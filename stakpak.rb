class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.12"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.12/stakpak-darwin-aarch64.tar.gz"
      sha256 "e30ad65d2d5edf066e5f0d5c5a34551ce0a5ea485937bf9465a04bc461fcc0f3"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.12/stakpak-darwin-x86_64.tar.gz"
      sha256 "e814c5162961d78d95660e00c646b1fdd9751cffd201f6c0f61e659ffd00cafa"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.12/stakpak-linux-x86_64.tar.gz"
    sha256 "9b7d77dde288875c4e6d59d4c2f73b558a95627afedbcbe91e1acdcf402fbbe6"
  end
  
  def install
    bin.install "stakpak"
  end
end
