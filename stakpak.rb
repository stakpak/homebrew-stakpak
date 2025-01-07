class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.22"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.22/stakpak-darwin-aarch64.tar.gz"
      sha256 "51bc7518504d1ecb3f82e4522539f01429a5bbfe48d7823887c26937b0b253f6"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.22/stakpak-darwin-x86_64.tar.gz"
      sha256 "29bff33e58d5a5c5130e776c8bb8d19562cebec3a934206f98de901a62b99a9e"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.22/stakpak-linux-x86_64.tar.gz"
    sha256 "a3acab60f9348d5952337fc3b05ad408020887ca7d07c7cd93a64eefa2975c13"
  end
  
  def install
    bin.install "stakpak"
  end
end
