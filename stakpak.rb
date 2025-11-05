class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.71"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.71/stakpak-darwin-aarch64.tar.gz"
      sha256 "753c3a4ff3e3efd999fc83ba802337300ec957c81fd613b9dad4c157edb262ec"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.71/stakpak-darwin-x86_64.tar.gz"
      sha256 "1db3687f03e15670216b477f1e90116fc764eaf805f4b8e40e51da249f4a3de5"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.71/stakpak-linux-aarch64.tar.gz"
      sha256 "ab2cc2047f595ffe51400ea7bf717f0ed8e01d5bcc458a84bbaf5feac4927287"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.71/stakpak-linux-x86_64.tar.gz"
      sha256 "9dc4308cda151d6b1ad8c0ca69ed247183b7465c5de2683f202cfa1776cdca51"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
