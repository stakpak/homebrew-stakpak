class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.70"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.70/stakpak-darwin-aarch64.tar.gz"
      sha256 "5b782f1be53414678fd9158bb95a71bb88d29666b4b87d21f8959d0cd5027503"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.70/stakpak-darwin-x86_64.tar.gz"
      sha256 "f5da2c3e23d40754fbe2d0d116d1f255698d627002b7732cb48ebd33c84cad89"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.70/stakpak-linux-aarch64.tar.gz"
      sha256 "737f84215ee369e76766dfd3c942cc1082bf3287e088a4d53d6c669630307c4d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.70/stakpak-linux-x86_64.tar.gz"
      sha256 "8d8f851f2299c2fb31f8e33d7977f498074e5195d5326c7c335000c8cd7c01fb"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
