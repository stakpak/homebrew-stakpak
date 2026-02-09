class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.29"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.29/stakpak-darwin-aarch64.tar.gz"
      sha256 "aafe612b83c6e0911e41e790057b5f6947ce747b73cb05dc4e4b3f31a002671c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.29/stakpak-darwin-x86_64.tar.gz"
      sha256 "78d734d5bddd110239c9dcfe06e7600d3688bfbf617106f07b8b8f42f3cf97e9"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.29/stakpak-linux-aarch64.tar.gz"
      sha256 "9586f2dac9d0d4ab4081a1b939af82e426467ca37e98ac62d9bd5d02c67146e9"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.29/stakpak-linux-x86_64.tar.gz"
      sha256 "33e2f0c41277f621586f3ebfe552d0e3c53e049f0075ab96ebe6328e581a8632"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
