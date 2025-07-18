class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.145"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.145/stakpak-darwin-aarch64.tar.gz"
      sha256 "86438e09ee39eb0c0a1663cf3cadab8be1a3091d6321e4d922b16485d6c42ce7"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.145/stakpak-darwin-x86_64.tar.gz"
      sha256 "f4f4c2134800650617dbe01d614a1efa0de34beb1d12629c66334b94522c4616"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.145/stakpak-linux-aarch64.tar.gz"
      sha256 "ba71f9daa8663e274cb4f162b5bb8ba4b21c95834a557b714da633ce0e2bca8c"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.145/stakpak-linux-x86_64.tar.gz"
      sha256 "5cced3695de47b860e645b57b2998bd9c6af2e72e37e1da1010adebd5cb61592"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
