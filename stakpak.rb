class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.2.79"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.79/stakpak-darwin-aarch64.tar.gz"
      sha256 "550b6bc17b30010e1fedce455848b2cb13905e5d3c345ec54947febf1fb7aff6"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.79/stakpak-darwin-x86_64.tar.gz"
      sha256 "8facbfbf33a3fd7b0db5cfbd4dc28d8c3b1fcff3e290ceee3265fcae65fbd4b0"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.2.79/stakpak-linux-aarch64.tar.gz"
      sha256 "4ff37e32239b2c142098cd4099373c2dba15bb1a88403341a88d4dd712703a9d"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.2.79/stakpak-linux-x86_64.tar.gz"
      sha256 "46dc5f24d8e57f484b5bf7e8d48f2f6059a69ee608dadbdda85e135b9c63967a"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
