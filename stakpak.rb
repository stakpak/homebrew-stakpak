class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.93"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.93/stakpak-darwin-aarch64.tar.gz"
      sha256 "39e4ed59f4132990a42416c3f378ac3ccbcbc554d0cb1ee752a7ac3ba7e14ca6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.93/stakpak-darwin-x86_64.tar.gz"
      sha256 "0722bec5958ca0be9f99a6e57adb309a005bf62ed24b45440a4c1d480568ae64"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.93/stakpak-linux-x86_64.tar.gz"
    sha256 "e52a2bbff064d08a0af060f3fee57e17041853aea3f345fb2fb368ecc672bf6e"
  end
  
  def install
    bin.install "stakpak"
  end
end
