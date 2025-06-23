class Warden < Formula
  desc "Warden CLI tool"
  homepage "https://github.com/stakpak/warden"
  version "0.1.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.1/warden-darwin-aarch64.tar.gz"
      sha256 "0a3968ef8aa8fd74be40f8eff7c9b88635724fab802134fa7fbd913bd647a27f"
    else
      url "https://warden-cli-releases.s3.amazonaws.com/v0.1.1/warden-darwin-x86_64.tar.gz"
      sha256 "fc95bfa6f689572e3aa4a2c7208796a735b7d1a1a642c5e841fd13b5b0ad3af8"
    end
  end
  
  on_linux do
    url "https://warden-cli-releases.s3.amazonaws.com/v0.1.1/warden-linux-x86_64.tar.gz"
    sha256 "69694fc09e9c105ac9ffbdfa08bae41120c3df166048fc0e1603b00163b6218c"
  end
  
  def install
    bin.install "warden"
  end
end
