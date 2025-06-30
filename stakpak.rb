class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.112"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.112/stakpak-darwin-aarch64.tar.gz"
      sha256 "27182821d666efa66fcf2dad8afab1df7e990bf1cbc3955fded0f504048d4739"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.112/stakpak-darwin-x86_64.tar.gz"
      sha256 "eb3934737361d7a1eefd9f669a48a6a485a80f2052a07780d4709583f1153ef5"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.112/stakpak-linux-x86_64.tar.gz"
    sha256 "3fbeca0f8e8c17e7060eb514bf4d4aa07d063f7bc047ca23c5e379966bd87766"
  end
  
  def install
    bin.install "stakpak"
  end
end
