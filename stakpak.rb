class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.76"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.76/stakpak-darwin-aarch64.tar.gz"
      sha256 "eaa548a827ce2fda94bb1353c2b382da217ceb7f14f08e540c747b0e45ebfd23"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.76/stakpak-darwin-x86_64.tar.gz"
      sha256 "a2c4a1670fe6a2a828397c237ce0dfe78376527d4b36e703dd93f18ed118e3b5"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.76/stakpak-linux-x86_64.tar.gz"
    sha256 "4d9b142aaba57dd48be2dacaee0fd184126bfa166b7f86d8e2aefbfa1f1ed3b5"
  end
  
  def install
    bin.install "stakpak"
  end
end
