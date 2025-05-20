class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.52"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.52/stakpak-darwin-aarch64.tar.gz"
      sha256 "9781985193b99af5e998263180ef721d73bd3baefc258895c8d19208cfdbb50d"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.52/stakpak-darwin-x86_64.tar.gz"
      sha256 "f07f82fbfb0e51422daa6c147c47d02ba0a35e951d7e9018820c7c4517912308"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.52/stakpak-linux-x86_64.tar.gz"
    sha256 "284d10e42fcfd8ae0fec5eef2dbe92fb0db597fefd2ea34b40028cb769572899"
  end
  
  def install
    bin.install "stakpak"
  end
end
