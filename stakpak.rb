class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.42"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.42/stakpak-darwin-aarch64.tar.gz"
      sha256 "478425de82b18856a698f1c098fc575b882eba0c1325a9bce03ba3610c8401b5"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.42/stakpak-darwin-x86_64.tar.gz"
      sha256 "bf90079a021b4f1fab30537a65225a0efdf3a5521b2c6ece6b39189132e5a2c1"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.42/stakpak-linux-aarch64.tar.gz"
      sha256 "302a044917e9a309915bd754235542806cef15c7ae1dfcff48d0cb484e8f0e89"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.42/stakpak-linux-x86_64.tar.gz"
      sha256 "cd794a2e97e1079d7cd4b46474fd7fc036b9cfa376cea5f171d17e183dd2a610"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
