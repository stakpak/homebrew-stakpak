class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.39"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.39/stakpak-darwin-aarch64.tar.gz"
      sha256 "3f0184cb1fa36492f43c42e02656076a007563e261f74d623ae9f98174d95158"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.39/stakpak-darwin-x86_64.tar.gz"
      sha256 "e0760af20864b8c4ad3654501345a07465aee4614f3ffd7b08872b3021994320"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.39/stakpak-linux-x86_64.tar.gz"
    sha256 "2920e39d7bae266ea4820c205a3129575d5ab2e23f2415ea5f2049e5685ba7e5"
  end
  
  def install
    bin.install "stakpak"
  end
end
