class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.44"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.44/stakpak-darwin-aarch64.tar.gz"
      sha256 "28bee8cd537d6efeb0075dfeb5232d15fd8cc5c603a4a021692b83a0ae40176e"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.44/stakpak-darwin-x86_64.tar.gz"
      sha256 "2093afbdef6d796e83dfba1702637cd57feaf93e3de11b3c3521df729d89d332"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.44/stakpak-linux-x86_64.tar.gz"
    sha256 "36e27adb9370768672ef1f97ed2dffdc0a7b7b906058e03c770eb53dd8ef2a95"
  end
  
  def install
    bin.install "stakpak"
  end
end
