class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.26"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.26/stakpak-darwin-aarch64.tar.gz"
      sha256 "d09716617f2810fee651e13d32fc86eaae691b8ec3e3e3e3fc800648f0fb3b8a"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.26/stakpak-darwin-x86_64.tar.gz"
      sha256 "b1cdc3f5df9e334993e1c76c2d50afc9d2b2334ad112299f9b531ec97385ee33"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.26/stakpak-linux-x86_64.tar.gz"
    sha256 "26263892c08a8f8948481cae87100969bbf73a4c00d123cc94db59bae434e088"
  end
  
  def install
    bin.install "stakpak"
  end
end
