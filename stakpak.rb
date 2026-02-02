class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.17"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.17/stakpak-darwin-aarch64.tar.gz"
      sha256 "2a3bf09121e2d89aa9862b9a176d77401b36532c77166a1448cf4b4b3aa0f2bb"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.17/stakpak-darwin-x86_64.tar.gz"
      sha256 "6713dd1304156e16ced839ce6d8ba4d4dd81acb922368e9e7f8565dbc2bcd872"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.17/stakpak-linux-aarch64.tar.gz"
      sha256 "ee624b94f2d4dee10ad075c62b30d42dcac103c4f69b8b9c93012904629b413f"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.17/stakpak-linux-x86_64.tar.gz"
      sha256 "f4dc5bcaac6048013812f426ae37a67e3cf2c897316b455f0a7a449e74aef871"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
