class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.66"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.66/stakpak-darwin-aarch64.tar.gz"
      sha256 "bd7c27d39bea6c344e3ef038606079c283870b3b9ca9f29bd000c1a4987453c3"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.66/stakpak-darwin-x86_64.tar.gz"
      sha256 "30dc49c9c337cd03f691bc21e4e64e24c0de3220da3e7203a05232eb246331d8"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.66/stakpak-linux-aarch64.tar.gz"
      sha256 "f6cf33a07d00a857bd1421e3909c057b26021a44d2be39a06fecaaed7838b8ac"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.66/stakpak-linux-x86_64.tar.gz"
      sha256 "8210bd81321b2792e8fdde37ff26b1dc65b17c4dfac9b01fda4c07f9b51a3c45"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
