class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.35"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.35/stakpak-darwin-aarch64.tar.gz"
      sha256 "b937bdfdb8b05ce750b55c2da307793458aa1a2234efbadecd657bcf7d93b23c"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.35/stakpak-darwin-x86_64.tar.gz"
      sha256 "7e8d27d797d96b338296bee4d70eccf11d889715fd32aadd4aa22470c668cffa"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.35/stakpak-linux-x86_64.tar.gz"
    sha256 "69fc55f75b74c817a9749dbb941e6f9d0259cf9420b475c6923ebd9c9bd517c2"
  end
  
  def install
    bin.install "stakpak"
  end
end
