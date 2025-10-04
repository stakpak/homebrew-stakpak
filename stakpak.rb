class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.57"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.57/stakpak-darwin-aarch64.tar.gz"
      sha256 "f6f71f29aa059e7d5afcc301fb4704f0f9cde94908555ddb47de708fe192492e"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.57/stakpak-darwin-x86_64.tar.gz"
      sha256 "6a8e58dd1e68618d80ccf2b492d575af7c40aa607620a11b37ef4c5a19e712d6"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.57/stakpak-linux-aarch64.tar.gz"
      sha256 "3934460061dc2658879d299379ca25e73bd5c87124343853d599f7b60dd1bf26"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.57/stakpak-linux-x86_64.tar.gz"
      sha256 "d08f08225108b40cdd72862e8d05099e8752aa6629a123b9a2d05b9cb59407ce"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
