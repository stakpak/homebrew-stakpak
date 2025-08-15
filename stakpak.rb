class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.23"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.23/stakpak-darwin-aarch64.tar.gz"
      sha256 "06304e81b908c01dcc303dea0271af89488f6949ea53baa9b4ce6e2d66d6f92f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.23/stakpak-darwin-x86_64.tar.gz"
      sha256 "837c3df9b161a400d837c26b038929bce7d7f049f62b25a9ea011389b17a4f11"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.23/stakpak-linux-aarch64.tar.gz"
      sha256 "c36cb7633c6863c92ad5f3f71c4bae7e0d3d817c7f9ab929e39ae603c5be84fb"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.23/stakpak-linux-x86_64.tar.gz"
      sha256 "5cb127aec33f3f430b067b4556c86b0a779653b950c22a95d7bcf73031e7037f"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
