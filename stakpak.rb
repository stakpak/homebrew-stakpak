class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.14"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.14/stakpak-darwin-aarch64.tar.gz"
      sha256 "ad98323b526b1c7f49e713ac2c8b522c834d5e03eda205fa0090920425065dca"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.14/stakpak-darwin-x86_64.tar.gz"
      sha256 "165a7ac4f176f7ede441c85fb8faebb3a9f81b0fad079452d1c1fd5d20ca3275"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.14/stakpak-linux-aarch64.tar.gz"
      sha256 "003be9a969b8a4a37581b1cc547b29b253dbc928e31691ed75bdec3ade13ec79"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.14/stakpak-linux-x86_64.tar.gz"
      sha256 "5b7765d89c1f4263a3922e7204b3d4d18a1656e1ec2020a7ab8d2330b02331ee"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
