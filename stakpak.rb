class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.51"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/cli/releases/download/v0.1.51/stakpak-darwin-aarch64.tar.gz"
      sha256 "bec52007524aa789d2552fdc2901127aa1514a25c684d499d7870bb56e5809bd"
    else
      url "https://github.com/stakpak/cli/releases/download/v0.1.51/stakpak-darwin-x86_64.tar.gz"
      sha256 "343d4bc87e43aadb79643ae18e04bae8a8f134ac619e55cf215ebc84a9db84ae"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/cli/releases/download/v0.1.51/stakpak-linux-x86_64.tar.gz"
    sha256 "6f9fbdf512cf02a810b7eb1c8086c92195ea3c3f78b5716c9bd29ddbbea5300d"
  end
  
  def install
    bin.install "stakpak"
  end
end
