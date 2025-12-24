class Paks < Formula
  desc "Paks CLI tool"
  homepage "https://github.com/stakpak/paks"
  version "0.1.6"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.6/paks-darwin-aarch64.tar.gz"
      sha256 "54f3da4136aa8397b0ec2fdc63d25de32f556c609edb44a9cfbb1b886e059ca5"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.6/paks-darwin-x86_64.tar.gz"
      sha256 "eedb91743ba7a9ff114aa87edb7cec3a15e5359c88ed3f4f08e32142216ff3f5"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/paks/releases/download/v0.1.6/paks-linux-aarch64.tar.gz"
      sha256 "7dee7c57900bdcf79135379c7c93029c126c8d9635a29a00006b7119d3ab110b"
    else
      url "https://github.com/stakpak/paks/releases/download/v0.1.6/paks-linux-x86_64.tar.gz"
      sha256 "52ed2439a0c40e3f35c51f37744591071f27619bfee1cfc0bb68a4de99a47305"
    end
  end
  
  def install
    bin.install "paks"
  end
end
