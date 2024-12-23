class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.7"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.7/stakpak-darwin-aarch64.tar.gz"
      sha256 "2a5a08f656593b73eef7636f83b736129f6bb87c0e9f234291bdbe264d906ca4"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.7/stakpak-darwin-x86_64.tar.gz"
      sha256 "2733019d4880e969295b4b80016b4886d692f6c546fa09f0cddc3536d76a90a8"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.7/stakpak-linux-x86_64.tar.gz"
    sha256 "c9ca4ad868779c2eb9029713e7957bbc644bae0cd42862763549a3767f755f9f"
  end
  
  def install
    bin.install "stakpak"
  end
end
