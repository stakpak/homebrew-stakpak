class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.69"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.69/stakpak-darwin-aarch64.tar.gz"
      sha256 "d0c3c66449a3ac042f2c941459e4477a435ad08532152b550770d6056d79d083"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.69/stakpak-darwin-x86_64.tar.gz"
      sha256 "f637c2e8a289ad2630fb2b81e7d5c5ba7961a468170fe4873131bd5219647830"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.69/stakpak-linux-x86_64.tar.gz"
    sha256 "006b42b00fb8e0adb996b6632ab6ab5c7722c377d518a8c628e2e5f1a8af0a1b"
  end
  
  def install
    bin.install "stakpak"
  end
end
