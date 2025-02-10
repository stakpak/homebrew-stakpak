class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.31"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.31/stakpak-darwin-aarch64.tar.gz"
      sha256 "5b48837fac05460ef5b2b234c40c8f837281d6810fda4f258e6a86a8acbfbaff"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.31/stakpak-darwin-x86_64.tar.gz"
      sha256 "66d996707663ddddaadbe54294c1fb1910ff88bffdf9d550a85c0c3dd7c4403a"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.31/stakpak-linux-x86_64.tar.gz"
    sha256 "351b89510e456d4f875c5c2ccdb0a5048576ed3fdd5976e80f85baf0be612972"
  end
  
  def install
    bin.install "stakpak"
  end
end
