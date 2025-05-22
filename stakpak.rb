class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.58"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.58/stakpak-darwin-aarch64.tar.gz"
      sha256 "1558d2abcc835d8b958d89f09667553ff16153718692f40dfd9ff993b993ec8f"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.58/stakpak-darwin-x86_64.tar.gz"
      sha256 "fb5fa731287667a817928c5cf6796680aa3cec7cf8f54f66631ce39728254743"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.58/stakpak-linux-x86_64.tar.gz"
    sha256 "380fab5561e23014386d0c183d0b4d55757294b4ecf3863be080f803667d688b"
  end
  
  def install
    bin.install "stakpak"
  end
end
