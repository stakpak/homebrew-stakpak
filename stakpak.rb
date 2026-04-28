class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.77"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.77/stakpak-darwin-aarch64.tar.gz"
      sha256 "217a93f02a8f895b06379bea19221dfb58cc7776d635e6a7c347149be7ff4c1f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.77/stakpak-darwin-x86_64.tar.gz"
      sha256 "feebcccb4916b5c232858eb6dd64d9e1c5d4089324615d3e5c8068ad1196ec46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.77/stakpak-linux-aarch64.tar.gz"
      sha256 "c59d3d2756343b99fd9316aa2b616aff97d7ff096aafd26530adc6486cc43743"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.77/stakpak-linux-x86_64.tar.gz"
      sha256 "e6fca4a93a44e0ec6774d02c6f02ae375bb6ada1ecb473b127d15ab8f1c5964e"
    end
  end

  def install
    bin.install "stakpak"
  end
end
