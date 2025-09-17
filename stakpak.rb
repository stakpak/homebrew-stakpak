class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.46"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.46/stakpak-darwin-aarch64.tar.gz"
      sha256 "71824290a8467a590ad7393e96a6b995c0b33e787961dacefe758a2c5885d534"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.46/stakpak-darwin-x86_64.tar.gz"
      sha256 "1b18a74800c4199792a6980cc4878e3fe7aec37c904b3d085b74210b56303e28"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.46/stakpak-linux-aarch64.tar.gz"
      sha256 "95a747b5a963f7091e393eba269facd09e0ab1b98f48b2cdb1cd5df5ea9401c2"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.46/stakpak-linux-x86_64.tar.gz"
      sha256 "0d55cb039feb786a33203f224409488e8592e55a0d8bb54e792d3bdaa389ad02"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
