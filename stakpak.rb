class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.10/stakpak-darwin-aarch64.tar.gz"
      sha256 "225040f240ef7d537c76dcba921d138259162daeea01c8efdde53dd54f891d1a"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.10/stakpak-darwin-x86_64.tar.gz"
      sha256 "6c619d06e97b04935bbb44e7a59828abd55301dbb8886f2af4afaec3025d5272"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.10/stakpak-linux-x86_64.tar.gz"
    sha256 "bbf90f6355cf500eeb7a1b1e7ea953bb4727b4a480a62fee68cfdac8928f156e"
  end
  
  def install
    bin.install "stakpak"
  end
end
