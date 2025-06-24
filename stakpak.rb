class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.105"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.105/stakpak-darwin-aarch64.tar.gz"
      sha256 "f49f1f74e41ace83ffded719241d13e3bda00b47ca8f5dcb0a971f5ec8310c27"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.105/stakpak-darwin-x86_64.tar.gz"
      sha256 "47f7b2b392e1fd37d84814ddd99241ad2ac1feb45cd63f5857951fb17923da05"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.105/stakpak-linux-x86_64.tar.gz"
    sha256 "a2716bc84bc11ad17bba00bf5831ae2038af0d116bf64073bc7c1653ddd651f2"
  end
  
  def install
    bin.install "stakpak"
  end
end
