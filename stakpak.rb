class Stakpak < Formula
  desc "Stakpak CLI tool"
  homepage "https://github.com/stakpak/stakpak"
  version "0.3.71"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.71/stakpak-darwin-aarch64.tar.gz"
      sha256 "93923d47949a78d124063602d631b5a4a7b790d8603459ea2374f19f10399b03"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.71/stakpak-darwin-x86_64.tar.gz"
      sha256 "5d7aa1383936e69f693f223ab6269ab643e2886148e47064ae05963ffe395690"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stakpak/agent/releases/download/v0.3.71/stakpak-linux-aarch64.tar.gz"
      sha256 "c0b59b8e159b1e6d36b06cda22ff3ac7789bd8767c05121f6522bbe785394100"
    else
      url "https://github.com/stakpak/agent/releases/download/v0.3.71/stakpak-linux-x86_64.tar.gz"
      sha256 "2aa90c0f2958ae3e440f9b57df015652afcc6553eb7b5de4490d88e8fecbe8f5"
    end
  end
  
  def install
    bin.install "stakpak"
  end
end
