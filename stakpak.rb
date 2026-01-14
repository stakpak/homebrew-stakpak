class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.13"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.13/stakpak-darwin-aarch64.tar.gz"
      sha256 "da3b599cc7bba874996f8a6891335ea9172ea35bb66acc3d020585b90101b94e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.13/stakpak-darwin-x86_64.tar.gz"
      sha256 "66b97a6403f5e58c6732ec7cd22b16d9f62173342299f771a572507e8bb8ad00"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.13/stakpak-linux-aarch64.tar.gz"
      sha256 "c5be7db10a2ae06673887d4d4d48ca313adc5f895acf52ce2b733f6d8d41fe86"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.13/stakpak-linux-x86_64.tar.gz"
      sha256 "d6d51164be0831914b033d70d5b5f4ed0fc8cc5b04a973ec1af1f1906ea22a24"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
