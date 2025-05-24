class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.60"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.60/stakpak-darwin-aarch64.tar.gz"
      sha256 "93dc55b4d223c4ab123293867c242e0c58004be431b1102e1dfdcdb9916ddb0d"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.60/stakpak-darwin-x86_64.tar.gz"
      sha256 "440307a61a0ff7953ac67ce6425e97ca8087c342bbf08e5ac5a99d9b9b6f1151"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.60/stakpak-linux-x86_64.tar.gz"
    sha256 "3cea360d9880d03e05362a41d78998f0864e76cc4338a51d1b96df0fb9f0959c"
  end
  
  def install
    bin.install "stakpak"
  end
end
