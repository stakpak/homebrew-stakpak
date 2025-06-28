class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.1.110"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.1.110/stakpak-darwin-aarch64.tar.gz"
      sha256 "c0be7fc5633e13c75fbcc06d8fe381cd60ce8cf6b77183902f9797a457b75c4e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.1.110/stakpak-darwin-x86_64.tar.gz"
      sha256 "bc5627197893fd0e540f598b451fe8e3fb6a130cc4e1d7bfa3b711f5242072f0"
    end
  end
  
  on_linux do
    url "https://github.com/stakpak/agent/releases/download/v0.1.110/stakpak-linux-x86_64.tar.gz"
    sha256 "dce9fce80749241c79fca17aea422533a761b9cb93a1edaeb5506a06d05c4663"
  end
  
  def install
    bin.install "stakpak"
  end
end
