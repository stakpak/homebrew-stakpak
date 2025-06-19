class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.103"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.103/stakpak-darwin-aarch64.tar.gz"
      sha256 "ed3934d5546dfe370a732d2068f33b37952fd62212675622618f39ab48d61c6a"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.103/stakpak-darwin-x86_64.tar.gz"
      sha256 "718bb092fdc5cbf0f0b60abeada421cfa42d6b04a80f346e8b54c6aa5951474b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.103/stakpak-linux-x86_64.tar.gz"
    sha256 "ae12ee074e4aebdfce5a03b833e237bb7b2c3924844b3147ace910496fef6746"
  end
  
  def install
    bin.install "stakpak"
  end
end
