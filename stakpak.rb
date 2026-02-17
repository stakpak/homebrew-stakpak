class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.47"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.47/stakpak-darwin-aarch64.tar.gz"
      sha256 "111e614a8f08ffa69d491ea9ceb878b0053bfcd7b7dd16e104df01684b76fc6e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.47/stakpak-darwin-x86_64.tar.gz"
      sha256 "ac7138e3899444dd95979ae3eae678a6e3a86205e967a8659f1321267d7ff6f1"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.47/stakpak-linux-aarch64.tar.gz"
      sha256 "0c62c23ac11359752cf1ff6ff54f5be370bc06cf85e290535af4ba9415324f3e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.47/stakpak-linux-x86_64.tar.gz"
      sha256 "5ff09271c10aa85791e21058fbf0fbbc37bd4e403a5680bba1410649a78a19a0"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
