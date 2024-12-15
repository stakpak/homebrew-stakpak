class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.4"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.4/stakpak-darwin-aarch64.tar.gz"
      sha256 "05b63c76b7f4530547276a712ee6b92096369f283b76fa31cad2997266065f86"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.4/stakpak-darwin-x86_64.tar.gz"
      sha256 "4b879872cd60f9571bbc6510a3bcfb55813f5548083acc13868cb7f5f932c86b"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.4/stakpak-linux-x86_64.tar.gz"
    sha256 "25cda872392077b9a014bce6facff11c9431c721a06a12cc8e5da5bd1bd3ba1e"
  end
  
  def install
    bin.install "stakpak"
  end
end
