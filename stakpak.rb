class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.10"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.10/stakpak-darwin-aarch64.tar.gz"
      sha256 "b8a5f092c20b267e06923ca8cacfc36b08979f55b641c16fed60bdbbc34b9467"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.10/stakpak-darwin-x86_64.tar.gz"
      sha256 "3c09ebea6344f03a738d71cd9d4369053a3f41d15c39ae9167c7054f24d0d996"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.10/stakpak-linux-aarch64.tar.gz"
      sha256 "a7ecb5d22907e1ee416686cecd2380713096c1e1de1f615f8b484dfdfd5b30fa"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.10/stakpak-linux-x86_64.tar.gz"
      sha256 "7a38b6f9d61222aa98d86b9400e823f6700b640deed3a3661303e4d174388e74"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
